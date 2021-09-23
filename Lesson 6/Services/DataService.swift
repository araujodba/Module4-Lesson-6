//
//  DataService.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import Foundation

class DataService {
    
    static func getDataLoad() -> [Person] {
        //Create some Person data.
                
                // Create a path in the bunde
                let pathString = Bundle.main.path(forResource: "data", ofType: "json")
                //print("um...")
                
                // find URL
                if let path = pathString {
                    //print("dois...")
                    let url = URL.init(fileURLWithPath: path)
                    //print("três...")
                    // Find the Data.
                    do {
                        let data = try Data(contentsOf: url)
                        // JSON decoding
                        let decoder = JSONDecoder()
                        //print("quatro...")
                        do {
                            let personsData = try decoder.decode([Person].self, from: data)
                            
                            for r in personsData {
                                r.id = UUID()
                            }
                            return personsData
                        }
                        catch {
                            print(error)
                        }
                    }
                    catch {
                        print(error)
                    }
                }
        return [Person]()
    }

}

