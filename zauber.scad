//resolution of curves
$fn=99;

//base plate
difference () {
    cube ([14,14,2.4]);
    
    translate ([7,3,21])
    rotate ([0,90,90])
    cylinder(h=20,r=20);
}

//riser
difference () {
    cube ([14,4.2,6.4]);
    
    translate ([7,-1,25])
    rotate ([0,90,90])
    cylinder(h=20,r=20);    
}


//standoff
translate ([3.25,0,0])
cube ([7,4.2,8]);

//curved thingy
difference () {
    union () {
        //hallow cylinder
        translate ([3.25,-10,44.65])
        difference () {
            rotate ([0,90,0])
            cylinder(h=7,r=40);
            
            translate ([-1,0,0])
            rotate ([0,90,0])
            cylinder(h=22,r=40-2);
        }
    }

    //cut down hallow cylinder
    translate ([0,10,0])
    cube ([100,100,100]); 
    //cut down hallow cylinder
    translate ([0,-105,0])
    cube ([100,100,100]);
    //cut down hallow cylinder
    translate ([0,-10,40])
    cube ([100,100,100]);
}
