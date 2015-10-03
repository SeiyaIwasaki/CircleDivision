/*****************************************************
    Division
    
    2015 Seiya Iwasaki
*****************************************************/

import java.awt.Rectangle;

class Cell{
	/** field **/
	private		float						radiusSize_;
	private		ArrayList<Rectangle>		cellRooms_;
	private		ArrayList<Circle>			cells_;

	/** constructor **/
	Cell(){
		radiusSize_ = 0.9;
		cellRooms_ = new ArrayList<Rectangle>();
		cells_ = new ArrayList<Circle>();
		cellRooms_.add(new Rectangle(width, height));
		cells_.add(new Circle(cellRooms_.get(0), radiusSize_));
	}

	/** draw **/
	public void draw(){
		for(int i = 0; i < cells_.size(); i++){
			cells_.get(i).draw();
		}
	}

	/** method **/

	public int getActiveRoomIndex(Point touch){
		for(int i = 0; i < cellRooms_.size(); i++){
			if(cellRooms_.get(i).contains(touch)){
				return i;
			}
		}
		return 0;
	}

	public void addCell(int index){
		Rectangle target = new Rectangle(cellRooms_.get(index));
		if(boolean(ceil(random(100)) % 2)){
			cellRooms_.add(new Rectangle(target.x, target.y, target.width / 2, target.height));
			cellRooms_.add(new Rectangle(target.x + target.width / 2, target.y, target.width / 2, target.height));
		}else{
			cellRooms_.add(new Rectangle(target.x, target.y, target.width, target.height / 2));
			cellRooms_.add(new Rectangle(target.x, target.y + target.height / 2, target.width, target.height / 2));
		}
		cellRooms_.remove(index);
                cells_.remove(index);

		int latestIndex = cellRooms_.size() - 1;
		cells_.add(new Circle(cellRooms_.get(latestIndex - 1), radiusSize_));
		cells_.add(new Circle(cellRooms_.get(latestIndex), radiusSize_));
	}

        public void setRadiusSize(float rr){
            radiusSize_ = rr;
        }

	public int getCellSize(){
		return cells_.size();
	}
}
