package dao;
import java.util.ArrayList;

import dto.Plant;

public class PlantRepository {
	public ArrayList<Plant> listOfPlants = new ArrayList<Plant>();
	private static PlantRepository instance = new PlantRepository();
	public static PlantRepository getInstance() {
		return instance;
	}
	
	public PlantRepository() {
		
	}
	
	
	public ArrayList<Plant> getAllPlants(){
		return listOfPlants;
	}
	public void addProduct(Plant plant) {
		listOfPlants.add(plant);
	}
	public Plant getPlantById(String PlantId) {
		Plant PlantbyId = null;
		
		for(int i=0; i<listOfPlants.size(); i++) {
			Plant plant = listOfPlants.get(i);
			if(plant != null && plant.getPlantId() != null && plant.getPlantId().equals(PlantId)){
				PlantbyId = plant;
				break;
			}
		}
		return PlantbyId;
	}
}
