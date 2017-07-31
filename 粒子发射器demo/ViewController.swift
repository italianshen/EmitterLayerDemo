//
//  ViewController.swift
//  粒子发射器demo
//
//  Created by Danny on 2017/7/31.
//  Copyright © 2017年 Danny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //1.创建发射器
        let emitterLayer = CAEmitterLayer();
        //2.设置位置
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.size.width * 0.5, y: -200.0);
        
        //3开启三维效果
        emitterLayer.preservesDepth = true;
        
        //4.设置cell 对应一个粒子
        //4.1创建粒子
        let cell = CAEmitterCell();
        
        //4.2设置每秒发出多少个粒子
        cell.birthRate = 20;
        //4.3设置粒子存活时间
        cell.lifetime = 5;
        cell.lifetimeRange = 1.5;
        
        //4.4设置缩放比例
        cell.scale = 0.7;
        cell.scaleRange = 0.2;
        
        //4.5设置粒子的方向
        cell.emissionLongitude = CGFloat(M_PI_2);
        cell.emissionRange = CGFloat(M_PI_2 / 2);
        
        //4.6设置粒子的速度
        cell.velocity = 150;
        cell.velocityRange = 100;
        
        cell.spin = CGFloat(M_PI_2);
    
        //4.7设置粒子的内容
        cell.contents = UIImage(named: "good2_30x30")?.cgImage;
        
        //4.8将粒子设置到发射器中
        emitterLayer.emitterCells = [cell];
        
        //5.0
        view.layer.addSublayer(emitterLayer);
        
    }

}

