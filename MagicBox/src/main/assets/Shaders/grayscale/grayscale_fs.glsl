/*
Based on :
https://code.google.com/p/emulator-shaders/

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*/

#version 100

#ifdef GL_ES
	#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
	#else
precision mediump float;
	#endif
#endif	

varying vec2 v_texCoord;
uniform sampler2D s_texture;

void main()                                            
{
	const vec3 coef = vec3(0.299, 0.587, 0.114);
	vec4 color = texture2D(s_texture, v_texCoord);
	gl_FragColor.rgb = vec3(dot(color.rgb, coef));
}
 
 