//
//  AddViewController.swift
//  追加課題
//
//  Created by Yoko Imajo on 7/4/16.
//  Copyright © 2016 YokoImajo. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var addTextField: UITextField!
    
    var wordArray: [AnyObject] = []
    let saveData = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if saveData.arrayForKey("CONTENT") != nil {
            wordArray = saveData.arrayForKey("CONTENT")!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
        @IBAction func saveWord(){
            let wordDictionary = ["info":addTextField.text!]
            
            wordArray.append(wordDictionary)
            saveData.setObject(wordArray, forKey: "CONTENT")
            back()
            
            addTextField.text = ""

    }
    
    //登録が完了した時のアクション
    func back(){
         self.navigationController?.popViewControllerAnimated(true)
    }



    /*
    wordArray.append(wordDictionary)
    saveData.setObject(wordArray, forKey: "CONTENT")
    
    let alert = UIAlertController(
    title: "保存完了",
    message: "カウンターの登録が完了しました",
    preferredStyle: UIAlertControllerStyle.Alert)
    alert.addAction(
    UIAlertAction(
    title: "OK",
    style: UIAlertActionStyle.Default,
    handler: goTableView
    )
    )
    
    self.presentViewController(alert, animated: true, completion:nil)
    addTextField.text = ""
    
    }
    
    //登録が完了した時のアクション
    func goTableView(ac: UIAlertAction){
    let startView = self.storyboard!.instantiateViewControllerWithIdentifier("table") as! UITableViewController
    self.presentViewController(startView, animated: true, completion: nil)
    print("done")
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}