//
//  ViewController.swift
//  Hisham Abu Sanimeh
//  301289364
//  ICE 7
//  19 March 2023


import UIKit
import GLKit

class ViewController: UIViewController
{
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myImageView: UIImageView!
    
    /// This function is called after the view controller has loaded its view hierarchy into memory.
    /// It initializes and animates UI components like Label, TextField, and ImageView.
    /// It sets up rotation, sliding, and transparency animations for the components.
    override func viewDidLoad() {
        // Call the superclass implementation of viewDidLoad().
        super.viewDidLoad()

        // Convert the rotation angle from degrees to radians.
        let rotateMe = GLKMathDegreesToRadians(45)

        // MARK: - Sliding Animations

        // Animate the sliding of the Label, TextField, and ImageView horizontally across the view.
        UIView.animate(withDuration: 1.5) {
            self.myLabel.center.x += self.view.bounds.width
            self.myTextField.center.x += self.view.bounds.width
            self.myImageView.center.x += self.view.bounds.width
        }

        // MARK: - Rotation Animations

        // Rotate the Label with a repeating and reversing animation.
        UIView.animate(withDuration: 3.4, delay: 2.3, options: [.repeat, .autoreverse], animations: {
            self.myLabel.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
        }, completion: nil)

        // Rotate the TextField with a repeating and reversing animation.
        UIView.animate(withDuration: 3.5, delay: 0.45, options: [.repeat, .autoreverse], animations: {
            self.myTextField.transform = CGAffineTransform(rotationAngle: CGFloat(-rotateMe))
        }, completion: nil)

        // Rotate the ImageView with a repeating and reversing animation.
        UIView.animate(withDuration: 2.5, delay: 1.5, options: [.repeat, .autoreverse], animations: {
            self.myImageView.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
        }, completion: nil)

        // MARK: - Transparency Animations

        // Animate the transparency and background color change of the Label with a repeating and reversing animation.
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            self.myLabel.alpha = 0.0
            self.myLabel.backgroundColor = UIColor.lightGray
        }, completion: nil)

        // Animate the transparency and background color change of the TextField with a repeating and reversing animation.
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            self.myTextField.alpha = 0.0
            self.myTextField.backgroundColor = UIColor.darkGray
        }, completion: nil)

        // Animate the transparency and background color change of the ImageView with a repeating and reversing animation.
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            self.myImageView.alpha = 0.0
            self.myImageView.backgroundColor = UIColor.black
        }, completion: nil)
    }

    /// This function is called just before the view controller's content view is added to the app's view hierarchy.
    /// It initializes the starting positions of the Label, TextField, and ImageView before their sliding animations.
    ///
    /// - Parameter animated: If `true`, the view controller is being added to the view hierarchy using an animation.
    override func viewWillAppear(_ animated: Bool)
    {
        myLabel.center.x -= view.bounds.width
        myTextField.center.x -= view.bounds.width
        myImageView.center.x -= view.bounds.width
    }
}

