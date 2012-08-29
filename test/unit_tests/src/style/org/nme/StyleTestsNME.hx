/*
This file is part of Silex - see http://projects.silexlabs.org/?/silex

Silex is © 2010-2011 Silex Labs and is released under the GPL License:

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License (GPL) as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version. 

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

To read the license please visit http://www.gnu.org/copyleft/gpl.html
*/

package style.org.nme;

/**
 * Units tests for Styles
 * @author Yannick DOMINGUEZ
 * 
 * 
 */

import cocktail.domElement.BodyDOMElement;
import cocktail.domElement.ImageDOMElement;
import cocktail.textElement.TextElement;
import haxe.Log;
import cocktail.domElement.ContainerDOMElement;
import cocktail.geom.GeomData;
import cocktail.domElement.DOMElement;
import cocktail.style.StyleData;
import cocktail.domElement.GraphicDOMElement;
import cocktail.domElement.DOMElementData;
import cocktail.unit.UnitData;
import cocktail.resource.ResourceLoaderManager;
import cocktail.nativeElement.NativeElementData;
import cocktail.nativeElement.NativeElementManager;
import cocktail.viewport.Viewport;
import haxe.Timer;


class StyleTestsNME
{
	
	public static function main()
	{
		new StyleTestsNME();
	}
	
	public function new() 
	{
		
	//	var bodyDOMElement:BodyDOMElement = new BodyDOMElement();
	//	var container:ContainerDOMElement = new ContainerDOMElement();
	//	container.style.display = DisplayStyleValue.block;
		var image:ImageDOMElement = new ImageDOMElement();
		image.load("testPicture.jpg");
	//	image.style.display = DisplayStyleValue.block;
	//	container.addText(new TextElement("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin erat quam, sollicitudin eget lobortis sit amet, placerat id felis. Cras tellus velit, faucibus vitae ultricies eget, malesuada ut justo. Donec scelerisque mi non lectus lobortis vel euismod nibh condimentum. Etiam sit amet sapien et arcu laoreet fermentum eu at dui. Quisque mattis mi enim, eget ultrices magna. Etiam dolor odio, varius in suscipit commodo, tincidunt ac lacus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam porttitor pulvinar metus faucibus posuere. Suspendisse congue enim non eros aliquam elementum. Praesent dictum porta luctus. Nam nec ipsum eu lectus iaculis euismod. Fusce ut tortor id nibh volutpat dapibus in in ante. "));
		//container.addChild(image);
		//bodyDOMElement.addChild(container);
		
	}
	
	
}