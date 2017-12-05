/**
 * Copyright (C) 2005-2012 Alfresco Software Limited.
 *
 * This file is part of Alfresco
 *
 * Alfresco is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Alfresco is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Alfresco. If not, see <http://www.gnu.org/licenses/>.
 */
 
/**
 * Copyright (C) 2012 Marco Scapoli
 *
 * This file is part of Versions Difference Alfresco Plug-in.
 *
 *  Versions Difference Alfresco Plug-in is free software: you can redistribute 
 *  it and/or modify
 *  it under the terms of the GNU Lesser General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Versions Difference Alfresco Plug-in is distributed in the hope
 *  that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Versions Difference Alfresco Plug-in.
 *  If not, see <http://www.gnu.org/licenses/>.
 *
 *  Author  Marco Scapoli  <rianko@gmail.com>
 *  File    versions-diff-hook.get.js
 **/

var connector = remote.connect("alfresco");
if(null == page.url.args.nodeRef || null == page.url.args.versRef)
{
	var data = null;
}else{
	var data = connector.get("/versions-diff.json?nodeRef=" + page.url.args.nodeRef + "&versRef=" + page.url.args.versRef);	
}
// Create a json object from data variable
if(null == data)
{
	model.result = jsonUtils.toObject({'msg' : 'Cannot resolve versions-diff-hook passed url'});
}else{
	
	var array = jsonUtils.toObject(data);
	if (array == null){
		var data2 = '{"message" : [ {"operation" : "EQUAL" , "content" : "Unable to display version difference for this file"}]}'
		var array2 = jsonUtils.toObject(data2);
		model.result = array2["message"];
		}
	else {
		model.result = array["message"];
		}
}
