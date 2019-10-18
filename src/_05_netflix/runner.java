package _05_netflix;

public class runner {
public static void main(String[] args) {
	
	Movie movie1 = new Movie("The Emoji Movie 6", 10000);
	Movie movie2 = new Movie("Twilight", 3);
	Movie movie3 = new Movie("Ice Age 13", 5);
	Movie movie4 = new Movie("The Meme Movie", 1);
	Movie movie5 = new Movie("Pets 4", 2);
	System.out.println(movie1.getTicketPrice());
	
	NetflixQueue netflix = new NetflixQueue();
	netflix.addMovie(movie1);
	netflix.addMovie(movie2);
	netflix.addMovie(movie3);
	netflix.addMovie(movie4);
	netflix.addMovie(movie5);
	netflix.printMovies();
	System.out.println(netflix.getBestMovie());
	System.out.println(netflix.getSecondBestMovie());
	
}
}
