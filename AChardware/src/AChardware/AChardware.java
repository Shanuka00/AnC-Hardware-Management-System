/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package AChardware;

import Forms.Progress;
import Forms.ChooseUser;

/**
 *
 * @author Group 04
 */

public class AChardware {
    
    public static void main(String[] args) {
        // TODO code application logic here
        Progress p = new Progress();
        p.setVisible(true);
        
        try{
            for(int i = 0; i <= 100; i++){
                Thread.sleep(50);
                p.pbar.setValue(i);
                p.lblPercent.setText(Integer.toString(i)+"%");
                
                ChooseUser ch = new ChooseUser();
                if(i == 70){
                   p.system_load.setText("System ready. . .");
                }else if(i == 100){
                    ch.show();
                    p.setVisible(false);
                }
            }
        }
        catch(InterruptedException x){
            
        }
    }
    
}