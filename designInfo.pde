/*****************************************************
    Division
    
    2015 Seiya Iwasaki
*****************************************************/

class designInfo{
	/** field **/
    private    color      color_;
    private	   color 	  fillColor_;
    private    int        weight_;
    private	   boolean	  stroke_;
    private    boolean    fill_;

    /** constructor **/
    designInfo(){
    	// default settings
    	color_ = color(75);
    	fillColor_ = color(floor(random(100, 256)), floor(random(100, 256)), floor(random(100, 256)));
    	weight_ = 2;
    	stroke_ = true;
    	fill_ = true;
    }

    /** method **/
    public void inputDesignInfo(){
        smooth();
        if(stroke_){
        	stroke(color_);
       	 	strokeWeight(weight_);
    	}else{
    		noStroke();
    	}
        if(fill_) {
            fill(fillColor_);
        }else{
            noFill();
        }
    }


    public void setWeight(int w){
        weight_ = w;
    }
    public int getWeight(){
        return weight_;
    }


    public void stroke_(color c){
    	stroke_ = true;
    	color_ = c;
    }
    public void noStroke_(){
    	stroke_ = false;
    }


    public void fill_(color c){
        fill_ = true;
        fillColor_ = c;
    }
    public void noFill_(){
        fill_ = false;
    }
}
