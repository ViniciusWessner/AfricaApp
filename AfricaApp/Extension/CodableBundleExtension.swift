//
//  CodableBundleExtension.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 15/04/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1 localizar json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("falha ao localizar \(file) no bundle")
        }
        //2 criar a propriedade de dados
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Falha ao carregar \(file) from bundle")
        }
        //3 crie um decodificador
        let decoder = JSONDecoder()
        
        //4 criar propriedade para decodificar os dados
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Falha ao decodificar \(file) do bundle")
        }
        
        //5 retornar os dados par ler e usar
        return loaded
    }
    
}
