/*****************************************************
    Division
    
    2015 Seiya Iwasaki
*****************************************************/

Cell	cells;

void setup(){
	size(displayWidth - 100, displayHeight - 100);
	colorMode(RGB, 256, 256, 256, 256);
	smooth();
	frameRate(60);

	cells = new Cell();
}

void draw(){
	background(#FFFFFF);
	cells.draw();
}

void mouseDragged(){
        if(frameCount % 5 == 0){	
            cells.addCell(cells.getActiveRoomIndex(new Point(mouseX, mouseY)));
        }
}

void keyPressed(){
        if(frameCount % 2 == 0){    
            cells.addCell(floor(random(cells.getCellSize())));
        }
}
