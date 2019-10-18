package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridWorldRunner {
public static void main(String[] args) {
	
	World world = new World();
	world.show();
	Bug bug1 = new Bug(Color.BLUE);
	Bug bug2 = new Bug();
	Location  location1 = new Location(8, 4);
	Location  location2 = new Location(6, 2);
	world.add(location1, bug1);
	world.add(location2, bug2);
	bug1.turn();
	
	Flower flower1 = new Flower(Color.BLUE);
	Location  location3 = new Location(0,0);
	world.add(location3, flower1);
	


}
}
