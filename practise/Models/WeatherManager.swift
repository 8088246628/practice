import Foundation
struct WeatherManager {
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?appid=ed28236ae7bd53db620b3406efeb3439&units=metric"
    func getWeather( city: String) {
        let urlString = "\(weatherUrl)&q=\(city)"
        print(urlString)
    }
    
    func performRequest (){
        if let url = URL(string: weatherUrl){
            let session =  URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data{
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                }
            }
            task.resume()
        }
    }
    func performRequestWithParameters( data: Data? , response : URLResponse?, error : Error?){
        
    }
}
