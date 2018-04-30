//
//  ViewController.swift
//  CMMedAppointment
//
//  Created by Unni K S on 4/23/18.
//  Copyright © 2018 calmove. All rights reserved.
//

import UIKit
import FontIcons

class ViewController: UIViewController {

    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    @IBOutlet weak var hospitalImage: UIImageView!
    
    @IBOutlet weak var memberButton: UIButton!
    @IBOutlet weak var myDoctorsButton: UIButton!
    @IBOutlet weak var appointmentsButton: UIButton!
    @IBOutlet weak var SpecialitiesButton: UIButton!
    @IBOutlet weak var doctorsButton: UIButton!
    @IBOutlet weak var resultsButton: UIButton!
    @IBOutlet weak var testimonialsButton: UIButton!
    @IBOutlet weak var newsButton: UIButton!
    @IBOutlet weak var feedbackButton: UIButton!
    @IBOutlet weak var packagesButton: UIButton!
    @IBOutlet weak var healthTipsButton: UIButton!
    @IBOutlet weak var routeMapButton: UIButton!
    @IBOutlet weak var emailUsButton: UIButton!
    @IBOutlet weak var callUsButton: UIButton!
    @IBOutlet weak var leftIcon: UIImageView!
    @IBOutlet weak var rightIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        memberButton.setFontIcon(iconName: FontAwesome.users)
        myDoctorsButton.setFontIcon(iconName: FontAwesome.starO)
        appointmentsButton.setFontIcon(iconName: FontAwesome.calendar)
        SpecialitiesButton.setFontIcon(iconName: FontAwesome.stethoscope)
        doctorsButton.setFontIcon(iconName: FontAwesome.userMd)
        resultsButton.setFontIcon(iconName: FontAwesome.fileTextO)
        testimonialsButton.setFontIcon(iconName: FontAwesome.commentsO)
        newsButton.setFontIcon(iconName: FontAwesome.newspaperO)
        feedbackButton.setFontIcon(iconName: FontAwesome.pencilSquareO)
        
        packagesButton.setRoundButtonWith(iconName: FontAwesome.medkit)
        healthTipsButton.setRoundButtonWith(iconName: FontAwesome.heartbeat)
        routeMapButton.setRoundButtonWith(iconName: FontAwesome.mapMarker)
        emailUsButton.setRoundButtonWith(iconName: FontAwesome.envelope)
        callUsButton.setRoundButtonWith(iconName: FontAwesome.phone)
        
        
        let size = CGSize(width: 18, height: 18)
        leftIcon.image = UIImage(icon: FontAwesome.mapMarker, size: size, textColor: .white, backgroundColor: .clear)
        rightIcon.image = UIImage(icon: FontAwesome.chevronDown, size: size, textColor: .white, backgroundColor: .clear)
        
        menuBarButton.image = UIImage(icon: FontAwesome.bars, size: CGSize(width: 20, height: 20))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onFirstButton(_ sender: Any) {
        let isLoggedIn = Utils.sharedInstance.isLoggedIn
        if(isLoggedIn) {
            
        }
        else {
            let loginVC = UIStoryboard(name: "LoginAndRegistration", bundle: nil).instantiateViewController(withIdentifier: "LoginVC")
            present(loginVC, animated: true, completion: nil)
        }
    }
    


}

