/*
	This file is part of Cocktail http://www.silexlabs.org/groups/labs/cocktail/
	This project is © 2010-2011 Silex Labs and is released under the GPL License:
	This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License (GPL) as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version. 
	This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
	To read the license please visit http://www.gnu.org/copyleft/gpl.html
*/
package cocktail.core.renderer;

import cocktail.core.dom.Node;
import cocktail.core.NativeElement;
import cocktail.core.drawing.DrawingManager;
import cocktail.core.geom.GeomData;
import cocktail.core.style.CoreStyle;

/**
 * This is the base class for element renderers.
 * An ElementRenderer is responsible for displaying
 * elements on the screen.
 * 
 * An element can be for instance an image or a text and
 * is generated by a HTMLElement.
 * 
 * The element renderer as a reference to the bounds of
 * the element.
 * 
 * The ElementRenderer of the document constitutes the rendering
 * tree.
 * 
 * The ElementRenderer is rendered by a LayerRenderer. An 
 * ElementRenderer can either generate its own LayerRenderer
 * or use the one of its parent. For instance, a positioned
 * ElementRenderer (absolute, fixed or relative) always
 * create a new LayerRenderer
 * 
 * @author Yannick DOMINGUEZ
 */
class ElementRenderer extends Node
{

	/**
	 * The bounds of the element renderer, relative to its
	 * formatting context root
	 */
	private var _bounds:RectangleData;
	public var bounds(getBounds, setBounds):RectangleData;
	
	/**
	 * A reference to the Style which instantiated
	 * the ElementRenderer
	 */
	private var _coreStyle:CoreStyle;
	public var coreStyle(getCoreStyle, never):CoreStyle;
	
	/**
	 * A reference to the LayerRenderer rendering this
	 * ElementRenderer
	 */
	private var _layerRenderer:LayerRenderer;
	public var layerRenderer(getLayerRenderer, setLayerRenderer):LayerRenderer;
	
	private var _lineBoxes:Array<LineBox>;
	public var lineBoxes(getLineBoxes, setLineBoxes):Array<LineBox>;
	
	/**
	 * class constructor. init class attribute
	 * @param	htmlElement the Style which created
	 * the ElementRenderer
	 */
	public function new(style:CoreStyle) 
	{
		super();
		_coreStyle = style;
		_bounds = {
			x:0.0,
			y:0.0,
			width:0.0,
			height:0.0
		}
		_lineBoxes = new Array<LineBox>();
	}
	
	/////////////////////////////////
	// PUBLIC METHODS
	////////////////////////////////
	
	/**
	 * Render the element using runtime specific
	 * API and return an array of NativeElement from it
	 */
	public function render():Array<NativeElement>
	{
		return [];
	}
	
	/**
	 * Render the background of the element using runtime specific
	 * API and return an array of NativeElement from it
	 * 
	 * TODO : no need for a separate background method ? For instance block
	 * render their background and border
	 */
	public function renderBackground():Array<NativeElement>
	{
		return [];
	}
	
	public function dispose():Void
	{
		
		_bounds = null;
		_coreStyle = null;
		//TODO : cause null runtime error
		//_layerRenderer.dispose();
		_layerRenderer = null;
	}
	
	/////////////////////////////////
	// PUBLIC HELPER METHODS
	////////////////////////////////
	
	public function establishesNewFormattingContext():Bool
	{
		return false;
	}
	
	public function canHaveChildren():Bool
	{
		return false;
	}
	
	public function isFloat():Bool
	{
		return _coreStyle.isFloat();
	}
	
	public function isPositioned():Bool
	{
		return _coreStyle.isPositioned();
	}
	
	public function isEmbedded():Bool
	{
		return true;
	}
	
	public function isText():Bool
	{
		return false;
	}
	
	public function isInitialContainer():Bool
	{
		return false;
	}
	
	public function isDisplayed():Bool
	{
		return _coreStyle.isDisplayed();
	}
	
	/////////////////////////////////
	// SETTERS/GETTERS
	////////////////////////////////
	
	private function getLineBoxes():Array<LineBox>
	{
		return _lineBoxes;
	}
	
	private function setLineBoxes(value:Array<LineBox>):Array<LineBox>
	{
		return _lineBoxes = value;
	}
	
	private function setLayerRenderer(value:LayerRenderer):LayerRenderer
	{
		return _layerRenderer = value;
	}
	
	private function getLayerRenderer():LayerRenderer
	{
		return _layerRenderer;
	}
	
	private function getCoreStyle():CoreStyle
	{
		return _coreStyle;
	}
	
	private function getBounds():RectangleData
	{
		return _bounds;
	}
	
	private function setBounds(value:RectangleData):RectangleData
	{
		return _bounds = value;
	}
	
}