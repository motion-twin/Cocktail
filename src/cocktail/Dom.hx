/*
	This file is part of Cocktail http://www.silexlabs.org/groups/labs/cocktail/
	This project is © 2010-2011 Silex Labs and is released under the GPL License:
	This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License (GPL) as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version. 
	This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
	To read the license please visit http://www.gnu.org/copyleft/gpl.html
*/
package cocktail;

/**
 * Define type aliases to match Haxe JS API
 */

typedef Image = cocktail.core.html.HTMLImageElement;
typedef HtmlDom = cocktail.core.html.HTMLElement;
typedef Anchor = cocktail.core.html.HTMLAnchorElement;
typedef Body = cocktail.core.html.HTMLBodyElement;
typedef Style = cocktail.core.style.adapter.Style;
typedef Window = cocktail.core.window.Window;
typedef Document = cocktail.core.html.HTMLDocument;
typedef FormElement = cocktail.core.html.HTMLInputElement;

//TODO : problem as for mouse event, have to use untyped
typedef Event = cocktail.core.event.Event;

typedef XMLHTTPRequest = cocktail.core.resource.XMLHTTPRequest;
typedef HtmlCollection<Dynamic> = Array<Dynamic>;