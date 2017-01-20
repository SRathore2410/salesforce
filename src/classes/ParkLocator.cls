public class ParkLocator {
	
	public String[] country(String country)
	{
		return (new ParkService.ParksImplPort()).byCountry(country);
	}
}