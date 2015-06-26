#include "map_node.h"

using namespace std;
using namespace Astar;


//========================= Node_class_functions_declarations ============================//
const Uint Map_Node::Node::num_nbrs = 8;

//constructors

Map_Node::Node::Node(int x, int y, double c, double pr, double p) : X(x), Y(y), cost(c), prob(p), priority(pr)
{
	init = false;
	neighbours = NULL;
}

Map_Node::Node::Node()
{
	Map_Node::Node::Node(0, 0, 0.0, 0.0, 0.5);
}

//destructor

Map_Node::Node::~Node()
{
	if (neighbours != NULL)
		delete[] neighbours;
}

//=============== getters

int Map_Node::Node::get_X() const { return X; }

int Map_Node::Node::get_Y() const { return Y; }

double Map_Node::Node::get_cost() const { return cost; }

double Map_Node::Node::get_priority() const{ return priority; }

double Map_Node::Node::get_prob() { return prob; }

Map_Node::Node** Map_Node::Node::get_nbrs()
{ 
	return neighbours; 
}

//============= setters

void Map_Node::Node::set_X(int x) { X = x; }

void Map_Node::Node::set_Y(int y) { Y = y; }

void Map_Node::Node::set_cost(double c){ cost = c; }

void Map_Node::Node::set_priority(double p){ priority = p; }

void Map_Node::Node::set_prob(double p){ prob = p; }

void Map_Node::Node::set_nbrs(Map_Node::Node** nbrs)
{
	if (init)
		return;
	init = true;
	neighbours = nbrs;
}

//============== other class functions

void  Map_Node::Node::Update_prt(const int& x, const int& y)
{
	priority = cost + heuristic(x, y) * 10;
}

void  Map_Node::Node::next_cost(const int &dir)
{
	cost += ((dir % 2) ? 14 : 10);// higher priority for moving straight
}


// the heuristic here is an estimation for the distance from current node to goal node
double  Map_Node::Node::heuristic(const int &x, const int &y)
{
	return  (int)(sqrt((x - X)*(x - X) + (y - Y)*(y - Y))); // euclidean distance
}

// ============ operators

bool Map_Node::Node::operator<(const Map_Node::Node & a)const
{
	return (priority - eps > a.get_priority());
}

bool operator==(const Map_Node::Node& a, const Map_Node::Node& b)
{
	return ((a.get_X() == b.get_X()) && (a.get_Y() == b.get_Y()));
}

bool operator!=(const Map_Node::Node& a, const Map_Node::Node& b)
{
	return ((a.get_X() != b.get_X()) || (a.get_Y() != b.get_Y()));
}

bool operator<(const Map_Node::Node & a, const Map_Node::Node & b)
{
	return (a.get_priority() - eps > b.get_priority());
}

bool operator>(const Map_Node::Node & a, const Map_Node::Node & b)
{
	return (a.get_priority() < b.get_priority() - eps);
}

//========================= Map_Node_class_functions_declarations ============================//

//check whether a cell is in the grid's range
bool Map_Node::exist(Uint x, Uint y)
{
	return  (x >= 0 && x < rows && y >= 0 && y < cols);
}

bool Map_Node::blocked(Uint x, Uint y)
{
	//return grid[x][y]->get_prob() - eps > 0.5;
	return !(grid[x][y]->get_prob() < 0.5 - eps);
}

//constructors
Map_Node::Map_Node(Uint c, Uint r)
{
	rows = r ;
	cols = c ;
	grid = new Node**[rows];

	// creating cells
	rep(i, 0, (int)rows)
	{
		grid[i] = new Node*[cols];
		rep(j, 0, (int)cols)
			grid[i][j] = new Node(i, j);
	}

	rep(i, 0, (int)rows)
	{
		rep(j, 0, (int)cols)
		{
			Node** nbrs = new Node*[Node::num_nbrs];
			for (int k = 0; k < Node::num_nbrs; k += (Node::num_nbrs == 8 ? 1 : 2))
			{
				Uint x = i + xDir[k], y = j + yDir[k];
				if (Map_Node::exist(x, y))
					nbrs[k] = grid[x][y];
				else
					nbrs[k] = NULL;
			}
			grid[i][j]->set_nbrs(nbrs);
		}
	}

	init_lists();
}

Map_Node::Map_Node()
{
	Map_Node::Map_Node(100, 100);
}

//destructor
Map_Node::~Map_Node()
{
	rep(i, 0, (int)rows)
	{
		rep(j, 0, (int)cols)
			delete grid[i][j];
		delete[] grid[i];
	}
	delete[] grid;
}

//getters
Uint Map_Node::get_cols(){ return cols; }

Uint Map_Node::get_rows(){ return rows; }

//=============== operators ==============//

Map_Node::Node* Map_Node::operator()(const Uint x, const Uint y){ return grid[x][y]; }


// ==================== manipulating open, closed and direction lists ======================//

void Map_Node::init_lists()
{
	opened.resize(rows);
	dir_map.resize(rows);
	closed.resize(rows);

	rep(i, 0, (int)rows)
	{
		opened[i].resize(cols);
		dir_map[i].resize(cols);
		closed[i].resize(cols);
		rep(j, 0, (int)cols)
		{
			opened[i][j] = 0.0;
			closed[i][j] = false;
			dir_map[i][j] = 0;
		}
	}

}

double Map_Node::get_opened(Uint x, Uint y){ return opened[x][y]; }
void Map_Node::set_opened(Uint x, Uint y, double b){ opened[x][y] = b; }

bool Map_Node::get_closed(Uint x, Uint y){ return closed[x][y]; }
void Map_Node::set_closed(Uint x, Uint y, bool b){ closed[x][y] = b; }

int Map_Node::get_dir(Uint x, Uint y){ return dir_map[x][y]; }
void Map_Node::set_dir(Uint x, Uint y, int b){ dir_map[x][y] = b; }