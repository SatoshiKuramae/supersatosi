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
 176;
 -17.50000;12.00000;-9.80000;,
 17.50000;12.00000;-9.80000;,
 17.50000;0.00001;-9.80000;,
 -17.50000;0.00001;-9.80000;,
 17.50000;12.00000;-9.80000;,
 17.50000;12.00000;10.20000;,
 17.50000;0.00001;10.20000;,
 17.50000;0.00001;-9.80000;,
 17.50000;12.00000;10.20000;,
 -17.50000;12.00000;10.20000;,
 -17.50000;0.00001;10.20000;,
 17.50000;0.00001;10.20000;,
 -17.50000;12.00000;10.20000;,
 -17.50000;12.00000;-9.80000;,
 -17.50000;0.00001;-9.80000;,
 -17.50000;0.00001;10.20000;,
 17.50000;12.00000;-9.80000;,
 -17.50000;12.00000;-9.80000;,
 -17.50000;0.00001;-9.80000;,
 17.50000;0.00001;-9.80000;,
 -17.50000;15.10000;-9.80000;,
 17.50000;15.10000;-9.80000;,
 17.50000;12.10000;-9.80000;,
 -17.50000;12.10000;-9.80000;,
 17.50000;15.10000;-9.80000;,
 17.50000;15.10000;10.20000;,
 17.50000;12.10000;10.20000;,
 17.50000;12.10000;-9.80000;,
 17.50000;15.10000;10.20000;,
 -17.50000;15.10000;10.20000;,
 -17.50000;12.10000;10.20000;,
 17.50000;12.10000;10.20000;,
 -17.50000;15.10000;10.20000;,
 -17.50000;15.10000;-9.80000;,
 -17.50000;12.10000;-9.80000;,
 -17.50000;12.10000;10.20000;,
 17.50000;15.10000;-9.80000;,
 -17.50000;15.10000;-9.80000;,
 -17.50000;12.10000;-9.80000;,
 17.50000;12.10000;-9.80000;,
 -8.00000;15.00000;0.20000;,
 -8.29289;15.00000;-0.50711;,
 -8.00000;22.29423;-0.50711;,
 -7.79289;22.08712;0.20000;,
 -9.00000;15.00000;-0.80000;,
 -8.50000;22.79423;-0.80000;,
 -9.70711;15.00000;-0.50711;,
 -9.00000;23.29423;-0.50711;,
 -10.00000;15.00000;0.20000;,
 -9.20710;23.50134;0.20000;,
 -9.70711;15.00000;0.90711;,
 -9.00000;23.29423;0.90711;,
 -9.00000;15.00000;1.20000;,
 -8.50000;22.79423;1.20000;,
 -8.29289;15.00000;0.90711;,
 -8.00000;22.29423;0.90711;,
 -8.00000;15.00000;0.20000;,
 -7.79289;22.08712;0.20000;,
 8.00000;22.29423;-0.50711;,
 7.79289;22.08712;0.20000;,
 8.50000;22.79423;-0.80000;,
 9.00000;23.29423;-0.50711;,
 9.20711;23.50134;0.20000;,
 9.00000;23.29423;0.90711;,
 8.50000;22.79423;1.20000;,
 8.00000;22.29423;0.90711;,
 7.79289;22.08712;0.20000;,
 8.29289;15.00000;-0.50711;,
 8.00000;15.00000;0.20000;,
 9.00000;15.00000;-0.80000;,
 9.70711;15.00000;-0.50711;,
 10.00000;15.00000;0.20000;,
 9.70711;15.00000;0.90711;,
 9.00000;15.00000;1.20000;,
 8.29289;15.00000;0.90711;,
 8.00000;15.00000;0.20000;,
 11.50000;12.00000;9.70000;,
 11.50000;11.56699;9.95000;,
 4.50000;11.56699;9.95000;,
 4.50000;12.00000;9.70000;,
 11.50000;11.56699;10.45000;,
 4.50000;11.56699;10.45000;,
 11.50000;12.00000;10.70000;,
 4.50000;12.00000;10.70000;,
 11.50000;12.43301;10.45000;,
 4.50000;12.43301;10.45000;,
 11.50000;12.43301;9.95000;,
 4.50000;12.43301;9.95000;,
 11.50000;12.00000;9.70000;,
 4.50000;12.00000;9.70000;,
 11.50000;12.00000;10.20000;,
 11.50000;12.00000;10.20000;,
 11.50000;12.00000;10.20000;,
 11.50000;12.00000;10.20000;,
 11.50000;12.00000;10.20000;,
 11.50000;12.00000;10.20000;,
 4.50000;12.00000;10.20000;,
 4.50000;12.00000;10.20000;,
 4.50000;12.00000;10.20000;,
 4.50000;12.00000;10.20000;,
 4.50000;12.00000;10.20000;,
 4.50000;12.00000;10.20000;,
 -4.50000;12.00000;9.70000;,
 -4.50000;11.56699;9.95000;,
 -11.50000;11.56699;9.95000;,
 -11.50000;12.00000;9.70000;,
 -4.50000;11.56699;10.45000;,
 -11.50000;11.56699;10.45000;,
 -4.50000;12.00000;10.70000;,
 -11.50000;12.00000;10.70000;,
 -4.50000;12.43301;10.45000;,
 -11.50000;12.43301;10.45000;,
 -4.50000;12.43301;9.95000;,
 -11.50000;12.43301;9.95000;,
 -4.50000;12.00000;9.70000;,
 -11.50000;12.00000;9.70000;,
 -4.50000;12.00000;10.20000;,
 -4.50000;12.00000;10.20000;,
 -4.50000;12.00000;10.20000;,
 -4.50000;12.00000;10.20000;,
 -4.50000;12.00000;10.20000;,
 -4.50000;12.00000;10.20000;,
 -11.50000;12.00000;10.20000;,
 -11.50000;12.00000;10.20000;,
 -11.50000;12.00000;10.20000;,
 -11.50000;12.00000;10.20000;,
 -11.50000;12.00000;10.20000;,
 -11.50000;12.00000;10.20000;,
 -1.50000;14.00000;-10.60000;,
 1.50000;14.00000;-10.60000;,
 1.50000;10.00000;-10.60000;,
 -1.50000;10.00000;-10.60000;,
 1.50000;14.00000;-10.60000;,
 1.50000;14.00000;-9.80000;,
 1.50000;10.00000;-9.80000;,
 1.50000;10.00000;-10.60000;,
 1.50000;14.00000;-9.80000;,
 -1.50000;14.00000;-9.80000;,
 -1.50000;10.00000;-9.80000;,
 1.50000;10.00000;-9.80000;,
 -1.50000;14.00000;-9.80000;,
 -1.50000;14.00000;-10.60000;,
 -1.50000;10.00000;-10.60000;,
 -1.50000;10.00000;-9.80000;,
 1.50000;14.00000;-10.60000;,
 -1.50000;14.00000;-10.60000;,
 -1.50000;10.00000;-10.60000;,
 1.50000;10.00000;-10.60000;,
 -6.00000;15.11000;2.20000;,
 6.00000;15.11000;2.20000;,
 6.00000;15.11000;-1.80000;,
 -6.00000;15.11000;-1.80000;,
 -2.00000;15.11000;6.20000;,
 2.00000;15.11000;6.20000;,
 2.00000;15.11000;-5.80000;,
 -2.00000;15.11000;-5.80000;,
 -17.50000;12.10000;-9.80000;,
 17.50000;12.10000;-9.80000;,
 17.50000;12.00000;-9.80000;,
 -17.50000;12.00000;-9.80000;,
 17.50000;12.10000;-9.80000;,
 17.50000;12.10000;10.20000;,
 17.50000;12.00000;10.20000;,
 17.50000;12.00000;-9.80000;,
 17.50000;12.10000;10.20000;,
 -17.50000;12.10000;10.20000;,
 -17.50000;12.00000;10.20000;,
 17.50000;12.00000;10.20000;,
 -17.50000;12.10000;10.20000;,
 -17.50000;12.10000;-9.80000;,
 -17.50000;12.00000;-9.80000;,
 -17.50000;12.00000;10.20000;,
 17.50000;12.10000;-9.80000;,
 -17.50000;12.10000;-9.80000;,
 -17.50000;12.00000;-9.80000;,
 17.50000;12.00000;-9.80000;;
 
 86;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;12,5,16,17;,
 4;18,19,6,15;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;28,29,30,31;,
 4;32,33,34,35;,
 4;32,25,36,37;,
 4;38,39,26,35;,
 4;40,41,42,43;,
 4;41,44,45,42;,
 4;44,46,47,45;,
 4;46,48,49,47;,
 4;48,50,51,49;,
 4;50,52,53,51;,
 4;52,54,55,53;,
 4;54,56,57,55;,
 4;43,42,58,59;,
 4;42,45,60,58;,
 4;45,47,61,60;,
 4;47,49,62,61;,
 4;49,51,63,62;,
 4;51,53,64,63;,
 4;53,55,65,64;,
 4;55,57,66,65;,
 4;59,58,67,68;,
 4;58,60,69,67;,
 4;60,61,70,69;,
 4;61,62,71,70;,
 4;62,63,72,71;,
 4;63,64,73,72;,
 4;64,65,74,73;,
 4;65,66,75,74;,
 4;76,77,78,79;,
 4;77,80,81,78;,
 4;80,82,83,81;,
 4;82,84,85,83;,
 4;84,86,87,85;,
 4;86,88,89,87;,
 3;90,77,76;,
 3;91,80,77;,
 3;92,82,80;,
 3;93,84,82;,
 3;94,86,84;,
 3;95,88,86;,
 3;96,79,78;,
 3;97,78,81;,
 3;98,81,83;,
 3;99,83,85;,
 3;100,85,87;,
 3;101,87,89;,
 4;102,103,104,105;,
 4;103,106,107,104;,
 4;106,108,109,107;,
 4;108,110,111,109;,
 4;110,112,113,111;,
 4;112,114,115,113;,
 3;116,103,102;,
 3;117,106,103;,
 3;118,108,106;,
 3;119,110,108;,
 3;120,112,110;,
 3;121,114,112;,
 3;122,105,104;,
 3;123,104,107;,
 3;124,107,109;,
 3;125,109,111;,
 3;126,111,113;,
 3;127,113,115;,
 4;128,129,130,131;,
 4;132,133,134,135;,
 4;136,137,138,139;,
 4;140,141,142,143;,
 4;140,133,144,145;,
 4;146,147,134,143;,
 4;148,149,150,151;,
 4;152,153,154,155;,
 4;156,157,158,159;,
 4;160,161,162,163;,
 4;164,165,166,167;,
 4;168,169,170,171;,
 4;168,161,172,173;,
 4;174,175,162,171;;
 
 MeshMaterialList {
  4;
  86;
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
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.800000;0.000000;0.000000;1.000000;;
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
   0.630588;0.633726;0.633726;1.000000;;
   10.000000;
   1.000000;1.000000;1.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  49;
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -0.999396;-0.034762;-0.000000;,
  -0.742436;-0.030211;-0.669236;,
  -0.002127;0.005193;-0.999984;,
  0.737179;0.062718;-0.672781;,
  0.996035;0.088965;-0.000000;,
  0.737179;0.062718;0.672781;,
  -0.002127;0.005193;0.999984;,
  -0.742436;-0.030211;0.669236;,
  0.999396;-0.034762;-0.000000;,
  0.742436;-0.030211;-0.669236;,
  0.002127;0.005193;-0.999984;,
  -0.737179;0.062718;-0.672780;,
  -0.996035;0.088965;0.000000;,
  -0.737179;0.062719;0.672780;,
  0.002127;0.005193;0.999984;,
  0.742436;-0.030211;0.669236;,
  0.534046;-0.218213;-0.816810;,
  0.001087;0.002655;-0.999996;,
  -0.527484;0.240231;-0.814892;,
  -0.527484;0.240231;0.814892;,
  0.001087;0.002655;0.999996;,
  0.534046;-0.218212;0.816810;,
  0.000000;-1.000000;-0.000000;,
  -0.168738;-0.579995;-0.796952;,
  -0.001414;-0.182897;-0.983131;,
  0.166851;0.582278;-0.795684;,
  -0.000000;1.000000;0.000000;,
  0.166851;0.582278;0.795684;,
  -0.001412;0.189560;0.981868;,
  -0.168738;-0.579995;0.796953;,
  0.000000;-0.500002;-0.866024;,
  0.000000;-0.500002;0.866024;,
  0.000000;0.499999;0.866026;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;-0.959684;-0.281081;,
  -0.000000;0.505450;-0.862856;,
  -0.000000;0.959683;-0.281083;,
  -0.000000;0.959683;0.281084;,
  0.000000;-0.505446;0.862858;,
  0.000000;-0.959684;0.281081;,
  -0.940835;-0.032725;-0.337280;,
  0.935637;0.083570;-0.342927;,
  0.935637;0.083570;0.342927;,
  -0.940835;-0.032725;0.337280;,
  0.000000;0.499999;-0.866026;;
  86;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;37,37,37,37;,
  4;36,36,36,36;,
  4;25,25,25,25;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;37,37,37,37;,
  4;36,36,36,36;,
  4;25,25,25,25;,
  4;11,12,19,11;,
  4;12,13,20,19;,
  4;13,14,21,20;,
  4;14,15,15,21;,
  4;15,16,22,15;,
  4;16,17,23,22;,
  4;17,18,24,23;,
  4;18,11,11,24;,
  4;25,38,26,25;,
  4;19,20,27,26;,
  4;20,21,28,39;,
  4;40,29,29,28;,
  4;29,41,30,29;,
  4;22,23,31,30;,
  4;23,24,32,42;,
  4;43,25,25,32;,
  4;3,44,4,3;,
  4;26,27,5,4;,
  4;27,28,6,5;,
  4;45,7,7,6;,
  4;7,46,8,7;,
  4;30,31,9,8;,
  4;31,32,10,9;,
  4;47,3,3,10;,
  4;33,33,33,33;,
  4;25,25,25,25;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;36,36,36,36;,
  4;48,48,48,48;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;37,37,37;,
  3;37,37,37;,
  3;37,37,37;,
  3;37,37,37;,
  3;37,37,37;,
  3;37,37,37;,
  4;33,33,33,33;,
  4;25,25,25,25;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;36,36,36,36;,
  4;48,48,48,48;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;37,37,37;,
  3;37,37,37;,
  3;37,37,37;,
  3;37,37,37;,
  3;37,37,37;,
  3;37,37,37;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;37,37,37,37;,
  4;36,36,36,36;,
  4;25,25,25,25;,
  4;36,36,36,36;,
  4;36,36,36,36;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;37,37,37,37;,
  4;36,36,36,36;,
  4;25,25,25,25;;
 }
 MeshTextureCoords {
  176;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.500000;0.000000;,
  0.500000;0.125000;,
  0.666667;0.125000;,
  0.666667;0.000000;,
  0.500000;0.250000;,
  0.666667;0.250000;,
  0.500000;0.375000;,
  0.666667;0.375000;,
  0.500000;0.500000;,
  0.666667;0.500000;,
  0.500000;0.625000;,
  0.666667;0.625000;,
  0.500000;0.750000;,
  0.666667;0.750000;,
  0.500000;0.875000;,
  0.666667;0.875000;,
  0.500000;1.000000;,
  0.666667;1.000000;,
  0.833333;0.125000;,
  0.833333;0.000000;,
  0.833333;0.250000;,
  0.833333;0.375000;,
  0.833333;0.500000;,
  0.833333;0.625000;,
  0.833333;0.750000;,
  0.833333;0.875000;,
  0.833333;1.000000;,
  1.000000;0.125000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  1.000000;0.375000;,
  1.000000;0.500000;,
  1.000000;0.625000;,
  1.000000;0.750000;,
  1.000000;0.875000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.166667;0.000000;,
  0.166667;1.000000;,
  0.000000;1.000000;,
  0.333333;0.000000;,
  0.333333;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.666667;0.000000;,
  0.666667;1.000000;,
  0.833333;0.000000;,
  0.833333;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.083333;0.000000;,
  0.250000;0.000000;,
  0.416667;0.000000;,
  0.583333;0.000000;,
  0.750000;0.000000;,
  0.916667;0.000000;,
  0.083333;1.000000;,
  0.250000;1.000000;,
  0.416667;1.000000;,
  0.583333;1.000000;,
  0.750000;1.000000;,
  0.916667;1.000000;,
  0.000000;0.000000;,
  0.166667;0.000000;,
  0.166667;1.000000;,
  0.000000;1.000000;,
  0.333333;0.000000;,
  0.333333;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.666667;0.000000;,
  0.666667;1.000000;,
  0.833333;0.000000;,
  0.833333;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.083333;0.000000;,
  0.250000;0.000000;,
  0.416667;0.000000;,
  0.583333;0.000000;,
  0.750000;0.000000;,
  0.916667;0.000000;,
  0.083333;1.000000;,
  0.250000;1.000000;,
  0.416667;1.000000;,
  0.583333;1.000000;,
  0.750000;1.000000;,
  0.916667;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;;
 }
}
