//
//  ViewController.swift
//  ToDoApp
//
//  Created by snapmac on 2/18/18.
//  Copyright © 2018 snapmac. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
  
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func action(_ sender: Any) {
        
        self.output.text = input.text
        UserDefaults.standard.set(input.text, forKey: "myName")
        input.text = ""
        
        guard let url = URL(string: "https://api.letsbuildthatapp.com/jsondecodable/courses") else {return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data,response,poop) in
            
            guard let data = data else { return }
            do{
                let course = try JSONDecoder().decode([Course].self, from: data)
                
                print(course.count)
                
            } catch let jsonErr {
                print(jsonErr)
            }
            
            }.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onGetTapped(_ sender: Any) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return }
        
        let session = URLSession.shared
        session.dataTask(with: url) {(data,response,poop) in
            if let response = response {
                print(response)
            }
            
            if let data = data{
                print(data)
            }
            
        
        }.resume()
        
    }
    
    
    @IBAction func onPostTapped(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        if let x = UserDefaults.standard.object(forKey: "myName") as? String {
//            output.text = x
//        }
//        var user = User(name: "mohammed",age: 32)
//        var userList: [User] = []
//        userList.append(User(name: "mohammed",age: 32))
//        userList.append(User(name: "mohammed 2 ",age: 33))
//        userList.append(User(name: "mohammed 3 ",age: 34))
//        userList.append(User(name: "mohammed 4 ",age: 35))
//
//        for user in userList {
//            print("name: \(user.name) , age: \(user.age)" )
//        }

    
    }
    
    


}

