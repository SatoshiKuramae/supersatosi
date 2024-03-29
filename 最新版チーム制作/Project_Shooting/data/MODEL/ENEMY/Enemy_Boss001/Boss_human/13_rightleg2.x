xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 28;
 -0.03609;0.24313;-1.74716;,
 8.41963;2.72653;-1.31060;,
 -0.03609;8.43039;-9.08030;,
 -0.03609;0.24313;-1.74716;,
 5.18984;2.72653;5.82334;,
 -0.03609;0.24313;-1.74716;,
 -5.26201;2.72653;5.82334;,
 -0.03609;0.24313;-1.74716;,
 -8.49180;2.72653;-1.31060;,
 -0.03609;0.24313;-1.74716;,
 -0.03609;8.43039;-9.08030;,
 -0.03609;-25.24432;-1.75257;,
 -0.03609;-24.22457;-13.81014;,
 10.97808;-27.74134;-4.17023;,
 -0.03609;-25.24432;-1.75257;,
 6.77104;-28.96411;9.72955;,
 -0.03609;-25.24432;-1.75257;,
 -6.84321;-28.96411;9.72955;,
 -0.03609;-25.24432;-1.75257;,
 -11.05025;-27.74134;-4.17023;,
 -0.03609;-25.24432;-1.75257;,
 -0.03609;-24.22457;-13.81014;,
 10.07806;-18.49339;-3.16426;,
 -0.03609;-18.44928;-14.95138;,
 6.17223;-18.54542;9.97526;,
 -6.24441;-18.54542;9.66559;,
 -12.11032;-18.49339;-3.16426;,
 -0.03609;-18.44928;-14.95138;;
 
 20;
 3;0,1,2;,
 3;3,4,1;,
 3;5,6,4;,
 3;7,8,6;,
 3;9,10,8;,
 3;11,12,13;,
 3;14,13,15;,
 3;16,15,17;,
 3;18,17,19;,
 3;20,19,21;,
 4;22,13,12,23;,
 4;22,23,2,1;,
 4;24,15,13,22;,
 4;24,22,1,4;,
 4;25,17,15,24;,
 4;25,24,4,6;,
 4;26,19,17,25;,
 4;26,25,6,8;,
 4;27,21,19,26;,
 4;27,26,8,10;;
 
 MeshMaterialList {
  12;
  20;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.671200;0.006400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.132000;0.132000;0.132000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.084800;0.021600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.040800;0.552000;0.037600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.696800;0.680800;0.238400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.558400;0.558400;0.558400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.496000;0.360800;0.244800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.724800;0.674400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.125600;0.414400;0.097600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  27;
  0.000000;0.977795;0.209564;,
  0.000000;0.667184;0.744893;,
  -0.281287;0.898515;0.336970;,
  -0.138788;0.965377;-0.220874;,
  0.138788;0.965377;-0.220874;,
  0.281287;0.898515;0.336970;,
  0.000000;-0.996443;-0.084273;,
  -0.244676;-0.962015;-0.121081;,
  -0.127132;-0.963234;-0.236683;,
  0.127132;-0.963233;-0.236683;,
  0.244676;-0.962015;-0.121081;,
  0.000000;-0.986635;-0.162948;,
  0.731828;0.070188;-0.677866;,
  0.945655;0.061066;0.319386;,
  -0.012411;0.087750;0.996065;,
  -0.922376;0.035590;0.384650;,
  0.722681;0.008443;-0.691130;,
  0.737994;0.131648;-0.661841;,
  0.955643;0.054578;0.289426;,
  0.934684;0.067490;0.349015;,
  -0.012465;-0.009433;0.999878;,
  -0.012239;0.184103;0.982831;,
  -0.933788;-0.045919;0.354869;,
  -0.903898;0.116826;0.411485;,
  -0.696036;0.048410;-0.716373;,
  -0.677602;-0.067168;-0.732355;,
  -0.704758;0.163314;-0.690395;;
  20;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,1,5;,
  3;11,6,7;,
  3;11,7,8;,
  3;11,8,9;,
  3;11,9,10;,
  3;11,10,6;,
  4;12,16,16,12;,
  4;12,12,17,17;,
  4;13,18,18,13;,
  4;13,13,19,19;,
  4;14,20,20,14;,
  4;14,14,21,21;,
  4;15,22,22,15;,
  4;15,15,23,23;,
  4;24,25,25,24;,
  4;24,24,26,26;;
 }
 MeshTextureCoords {
  28;
  0.100000;0.000000;,
  0.200000;0.000000;,
  0.000000;0.000000;,
  0.300000;0.000000;,
  0.400000;0.000000;,
  0.500000;0.000000;,
  0.600000;0.000000;,
  0.700000;0.000000;,
  0.800000;0.000000;,
  0.900000;0.000000;,
  1.000000;0.000000;,
  0.100000;1.000000;,
  0.000000;1.000000;,
  0.200000;1.000000;,
  0.300000;1.000000;,
  0.400000;1.000000;,
  0.500000;1.000000;,
  0.600000;1.000000;,
  0.700000;1.000000;,
  0.800000;1.000000;,
  0.900000;1.000000;,
  1.000000;1.000000;,
  0.200000;0.648220;,
  0.000000;0.797180;,
  0.400000;0.621300;,
  0.600000;0.621300;,
  0.800000;0.648220;,
  1.000000;0.797180;;
 }
}
