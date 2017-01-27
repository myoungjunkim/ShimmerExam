//
//  ViewController.swift
//  ShimmerExam
//
//  Created by MJ Kim on 2017. 1. 26..
//  Copyright © 2017년 swifter. All rights reserved.
//

import UIKit
import Shimmer

class ViewController: UIViewController {

    @IBOutlet weak var shimmerView: FBShimmeringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        shimmerView.isShimmering = true
        shimmerView.shimmeringBeginFadeDuration = 0.2
        shimmerView.shimmeringOpacity = 0.5
        
        let emptyView = UINib(nibName: "EmptyView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! UIView
        emptyView.frame = shimmerView.frame
        shimmerView.contentView = emptyView
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

