//
//  lunchscreenwithanimation.swift
//  EmojiTable
//
//  Created by Eman on 17/02/2023.
//

import UIKit

class lunchscreenwithanimation: UIViewController {
    var imageView : UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 283, height: 192))
        imageView.image = UIImage(named: "Image")
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            self.animate()
        }
    }
    
    private func animate(){
        UIView.animate(withDuration: 7, animations: {
            let size = self.view.frame.size.width * 3
            let diffx = size - self.view.frame.size.width
            let diffy = self.view.frame.size.height - size
            
            self.imageView.frame = CGRect(x: -(diffx/2), y: (diffy/2), width: size, height: size)
        })
        
        UIView.animate(withDuration: 1.5, animations: {
            self.imageView.alpha = 0
        },completion: { done in
            if done{
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
                    let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "navigationcontroller")
                    //viewController.modalTransitionStyle = .crossDissolve
                    viewController.modalPresentationStyle = .fullScreen
                    self.present(viewController, animated: true)
                }
            }
            
        })
        
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
