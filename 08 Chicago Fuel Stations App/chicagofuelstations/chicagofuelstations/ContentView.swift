//
//  ContentView.swift
//  chicagofuelstations
//
//  Created by iSushant on 03/01/23.
//

import SwiftUI

struct FuelStations: Decodable {
    var id: String
    var station_name: String
    var fuel_type_code: String
    var street_address: String
    var city: String
    var state: String
    var zip: String
}

struct ContentView: View {
    
    @State private var showAlert: Bool = false
    @State private var errorPopUp: String = ""
    @State private var fuelStations: [FuelStations] = [FuelStations]()
    
    var body: some View {
        VStack {
            Text("Chicago Fuel Stations")
                .font(.system(.largeTitle))
                .fontWeight(.semibold)
                .foregroundColor(.accentColor)
                .padding(10)
                .padding(.top, 40)
            
            Spacer()
            
            if fuelStations.isEmpty {
                ProgressView()
                    .padding()
                
                Text("Fuel Stations loading...")
                
                Spacer()
            } else {
                ScrollView {
                    LazyVStack {
                        ForEach(fuelStations, id: \.id) { fuelStation in
                            HStack (spacing: 10) {
                                Image("gas-pump")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .leading)
                                
                                VStack (alignment: .leading, spacing: 5) {
                                    Text("\(fuelStation.station_name)")
                                        .font(.system(.title2))
                                        .fontWeight(.bold)
                                    
                                    Text("\(fuelStation.fuel_type_code)")
                                        .font(.system(.title3))

                                    Text("\(fuelStation.street_address), \(fuelStation.city), \(fuelStation.station_name), \(fuelStation.zip).")
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white)
                                
                                Spacer()
                            }
                            .padding()
                            .frame(width: .infinity, height: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(15)
                            .padding(.horizontal, 10)
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.indigo.opacity(0.5))
        .ignoresSafeArea()
        .task {
            await fetchData()
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Fuel stations will be not available. As resource is bad one."),
                dismissButton: .cancel({exit(0)}))
        }
    }
    
    func fetchData() async {
        let baseURL = "https://data.cityofchicago.org/resource/f7f2-ggz5.json"
     
        guard let apiURL = URL(string: baseURL) else {
            self.showAlert = true
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: apiURL)
         
            if let decodedData = try? JSONDecoder().decode([FuelStations].self, from: data) {
                self.fuelStations = decodedData
            } else {
                self.showAlert = true
            }
        } catch {
            self.showAlert = true
            return
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
