/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.sample;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;

/**
 *
 * @author kobayashi
 */
abstract class Human {
    abstract public Integer open();
    abstract public void setCard(ArrayList doro);
    abstract public boolean checkSum();
    ArrayList<Integer> myCards = new ArrayList<Integer>();
}

class Dealer extends Human{
    public Integer open(){
        int sum = 0;
        for(int i =0;i<myCards.size();i++){
            sum = sum + myCards.get(i);
        }
        return sum;
    }
    
    public void setCard(ArrayList d){
        for(int i=0;i<d.size();i++){
        myCards.add((Integer)d.get(i));
        }
    }
            public boolean checkSum(){
                int sou =0;
                for(int i =0;i<myCards.size();i++){
                    sou = sou + myCards.get(i);
                }
                if(21<sou){
                    for(int i=0;i<myCards.size();i++){
                        if(myCards.get(i) == 11){
                            myCards.set(i,1);
                            break;
                        }
                    }
                    sou =0;
                for(int i =0;i<myCards.size();i++){
                    sou = sou + myCards.get(i);
                }
                }
                if(sou<=16){
                    return true;
                }else {
                    return false;
                }
            }
            
    ArrayList<Integer> cards = new ArrayList<Integer>(){
        {
            for(int i=0;i<4;i++){
            add(11);
            add(2);
            add(3);
            add(4);
            add(5);
            add(6);
            add(7);
            add(8);
            add(9);
            add(10);
            add(10);
            add(10);
            add(10);
            }
        }
    };
    
    public ArrayList deal(){
        Random ram = new Random();
        ArrayList<Integer> doro = new ArrayList<Integer>();
        for(int i=0;i<2;i++){
        int index = ram.nextInt(cards.size());
        doro.add(cards.get(index));
        cards.remove(index);
    }
        return doro;
    }
    
    public ArrayList hit(){
        Random ram = new Random();
        int index = ram.nextInt(cards.size());
        ArrayList<Integer> doro2 = new ArrayList<Integer>();
        doro2.add(cards.get(index));
        cards.remove(index);
        return doro2;
    }
}

class User extends Human{
    public Integer open(){
        int sum = 0;
        for(int i =0;i<myCards.size();i++){
            sum = sum + myCards.get(i);
        }
        return sum;
    }
    public void setCard(ArrayList d){
        for(int i=0;i<d.size();i++){
        myCards.add((Integer)d.get(i));
        }
    }
            public boolean checkSum(){
                int sou =0;
                for(int i =0;i<myCards.size();i++){
                    sou = sou + myCards.get(i);
                }
                if(21<sou){
                    for(int x=0;x<myCards.size();x++){
                        if(myCards.get(x) == 11){
                            myCards.set(x,1);
                            break;
                        }
                    }
                    sou =0;
                for(int i =0;i<myCards.size();i++){
                    sou = sou + myCards.get(i);
                }
                }
                if(sou<=16){
                    return true;
                }else {
                    return false;
                }
            }
}

