
#ifndef AS_MAP_NODE_H
#define AS_MAP_NODE_H

#include <functional>
#include <stdlib.h>

#include "def.h"

using namespace std;

namespace Astar
{
	class Map_Node
	{
	
	public:
		class Node
		{

		protected:
			//node coordinates
			int X, Y;
			// total distance already travelled to reach the node
			double cost;
			// priority=level+remaining distance estimate
			int priority;  // smaller: higher priority
			//probability needed in frontier based algorithm to determine whether it's occupied or not
			double prob;
			// neighbours of current cell
			Node** neighbours;
			//node initated or not
			bool init;

		public:
			static const Uint num_nbrs;

			//constructors
			Node(int x, int y, double c = 0.0, double pr = 0.0, double p = 0.5 );
			Node();

			//destructor
			~Node();

			//getters
			int get_X() const;
			int get_Y() const;
			double get_cost() const;
			double get_priority() const;
			double get_prob();
			Node** get_nbrs();

			//setters
			void set_X(int x);
			void set_Y(int y);
			void set_cost(double c);
			void set_priority(double p);
			void set_prob(double p);
			void set_nbrs(Node** nbrs);

			void Update_prt(const int& x, const int& y);
			void next_cost(const int &dir);
			// the heuristic here is an estimation for the distance from current node to goal node
			double heuristic(const int &x, const int &y);

			bool operator<(const Map_Node::Node &a) const;

		};

		//check whether a cell is in the grid's range
		bool exist(Uint x, Uint y);

		bool blocked(Uint x, Uint y);

		//constructors
		Map_Node(Uint c, Uint r);
		Map_Node();

		//destructor
		~Map_Node();

		//getters
		Uint get_cols();
		Uint get_rows();

		// ============ for operators
		Node* operator()(const Uint x,const Uint y);

		void init_lists();

		double get_opened(Uint x, Uint y);
		void set_opened(Uint x, Uint y, double b);

		bool get_closed(Uint x, Uint y);
		void set_closed(Uint x, Uint y, bool b);

		int get_dir(Uint x, Uint y);
		void set_dir(Uint x, Uint y, int b);

	protected:
		//Map for the robot
		Node*** grid;

		//Map dimensions
		Uint cols, rows;

		vector< vector<double> > opened;
		vector< vector<int> >  dir_map;
		vector< vector<bool> >  closed;
	};
	
};

#endif AS_MAP_NODE_H

