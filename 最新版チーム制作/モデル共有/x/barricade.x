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
 282;
 10.00000;10.00000;-0.50000;,
 10.43301;10.00000;-0.25000;,
 10.43301;0.00000;-5.25000;,
 10.00000;0.00000;-5.50000;,
 10.43301;10.00000;0.25000;,
 10.43301;0.00000;-4.75000;,
 10.00000;10.00000;0.50000;,
 10.00000;0.00000;-4.50000;,
 9.56699;10.00000;0.25000;,
 9.56699;0.00000;-4.75000;,
 9.56699;10.00000;-0.25000;,
 9.56699;0.00000;-5.25000;,
 10.00000;10.00000;-0.50000;,
 10.00000;0.00000;-5.50000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;0.00000;-5.00000;,
 10.00000;0.00000;-5.00000;,
 10.00000;0.00000;-5.00000;,
 10.00000;0.00000;-5.00000;,
 10.00000;0.00000;-5.00000;,
 10.00000;0.00000;-5.00000;,
 10.00000;10.00000;-0.50000;,
 10.43301;10.00000;-0.25000;,
 10.43301;0.00000;4.75000;,
 10.00000;0.00000;4.50000;,
 10.43301;10.00000;0.25000;,
 10.43301;0.00000;5.25000;,
 10.00000;10.00000;0.50000;,
 10.00000;0.00000;5.50000;,
 9.56699;10.00000;0.25000;,
 9.56699;0.00000;5.25000;,
 9.56699;10.00000;-0.25000;,
 9.56699;0.00000;4.75000;,
 10.00000;10.00000;-0.50000;,
 10.00000;0.00000;4.50000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;10.00000;0.00000;,
 10.00000;0.00000;5.00000;,
 10.00000;0.00000;5.00000;,
 10.00000;0.00000;5.00000;,
 10.00000;0.00000;5.00000;,
 10.00000;0.00000;5.00000;,
 10.00000;0.00000;5.00000;,
 -10.00000;10.00000;-0.50000;,
 -9.56699;10.00000;-0.25000;,
 -9.56699;0.00000;4.75000;,
 -10.00000;0.00000;4.50000;,
 -9.56699;10.00000;0.25000;,
 -9.56699;0.00000;5.25000;,
 -10.00000;10.00000;0.50000;,
 -10.00000;0.00000;5.50000;,
 -10.43301;10.00000;0.25000;,
 -10.43301;0.00000;5.25000;,
 -10.43301;10.00000;-0.25000;,
 -10.43301;0.00000;4.75000;,
 -10.00000;10.00000;-0.50000;,
 -10.00000;0.00000;4.50000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;0.00000;5.00000;,
 -10.00000;0.00000;5.00000;,
 -10.00000;0.00000;5.00000;,
 -10.00000;0.00000;5.00000;,
 -10.00000;0.00000;5.00000;,
 -10.00000;0.00000;5.00000;,
 -10.00000;10.00000;-0.50000;,
 -9.56699;10.00000;-0.25000;,
 -9.56699;0.00000;-5.25000;,
 -10.00000;0.00000;-5.50000;,
 -9.56699;10.00000;0.25000;,
 -9.56699;0.00000;-4.75000;,
 -10.00000;10.00000;0.50000;,
 -10.00000;0.00000;-4.50000;,
 -10.43301;10.00000;0.25000;,
 -10.43301;0.00000;-4.75000;,
 -10.43301;10.00000;-0.25000;,
 -10.43301;0.00000;-5.25000;,
 -10.00000;10.00000;-0.50000;,
 -10.00000;0.00000;-5.50000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;10.00000;0.00000;,
 -10.00000;0.00000;-5.00000;,
 -10.00000;0.00000;-5.00000;,
 -10.00000;0.00000;-5.00000;,
 -10.00000;0.00000;-5.00000;,
 -10.00000;0.00000;-5.00000;,
 -10.00000;0.00000;-5.00000;,
 10.00000;9.50000;-0.50000;,
 10.00000;9.06699;-0.25000;,
 -10.00000;9.06699;-0.25000;,
 -10.00000;9.50000;-0.50000;,
 10.00000;9.06699;0.25000;,
 -10.00000;9.06699;0.25000;,
 10.00000;9.50000;0.50000;,
 -10.00000;9.50000;0.50000;,
 10.00000;9.93301;0.25000;,
 -10.00000;9.93301;0.25000;,
 10.00000;9.93301;-0.25000;,
 -10.00000;9.93301;-0.25000;,
 10.00000;9.50000;-0.50000;,
 -10.00000;9.50000;-0.50000;,
 10.00000;9.50000;0.00000;,
 10.00000;9.50000;0.00000;,
 10.00000;9.50000;0.00000;,
 10.00000;9.50000;0.00000;,
 10.00000;9.50000;0.00000;,
 10.00000;9.50000;0.00000;,
 -10.00000;9.50000;0.00000;,
 -10.00000;9.50000;0.00000;,
 -10.00000;9.50000;0.00000;,
 -10.00000;9.50000;0.00000;,
 -10.00000;9.50000;0.00000;,
 -10.00000;9.50000;0.00000;,
 10.00000;2.75000;3.75000;,
 10.21651;2.62500;3.75000;,
 10.21651;2.62500;-3.75000;,
 10.00000;2.75000;-3.75000;,
 10.21651;2.37500;3.75000;,
 10.21651;2.37500;-3.75000;,
 10.00000;2.25000;3.75000;,
 10.00000;2.25000;-3.75000;,
 9.78349;2.37500;3.75000;,
 9.78349;2.37500;-3.75000;,
 9.78349;2.62500;3.75000;,
 9.78349;2.62500;-3.75000;,
 10.00000;2.75000;3.75000;,
 10.00000;2.75000;-3.75000;,
 10.00000;2.50000;3.75000;,
 10.00000;2.50000;3.75000;,
 10.00000;2.50000;3.75000;,
 10.00000;2.50000;3.75000;,
 10.00000;2.50000;3.75000;,
 10.00000;2.50000;3.75000;,
 10.00000;2.50000;-3.75000;,
 10.00000;2.50000;-3.75000;,
 10.00000;2.50000;-3.75000;,
 10.00000;2.50000;-3.75000;,
 10.00000;2.50000;-3.75000;,
 10.00000;2.50000;-3.75000;,
 -10.00000;2.75000;3.75000;,
 -9.78349;2.62500;3.75000;,
 -9.78349;2.62500;-3.75000;,
 -10.00000;2.75000;-3.75000;,
 -9.78349;2.37500;3.75000;,
 -9.78349;2.37500;-3.75000;,
 -10.00000;2.25000;3.75000;,
 -10.00000;2.25000;-3.75000;,
 -10.21651;2.37500;3.75000;,
 -10.21651;2.37500;-3.75000;,
 -10.21651;2.62500;3.75000;,
 -10.21651;2.62500;-3.75000;,
 -10.00000;2.75000;3.75000;,
 -10.00000;2.75000;-3.75000;,
 -10.00000;2.50000;3.75000;,
 -10.00000;2.50000;3.75000;,
 -10.00000;2.50000;3.75000;,
 -10.00000;2.50000;3.75000;,
 -10.00000;2.50000;3.75000;,
 -10.00000;2.50000;3.75000;,
 -10.00000;2.50000;-3.75000;,
 -10.00000;2.50000;-3.75000;,
 -10.00000;2.50000;-3.75000;,
 -10.00000;2.50000;-3.75000;,
 -10.00000;2.50000;-3.75000;,
 -10.00000;2.50000;-3.75000;,
 10.00000;1.00000;-4.75000;,
 10.00000;0.78349;-4.62500;,
 -10.00000;0.78349;-4.62500;,
 -10.00000;1.00000;-4.75000;,
 10.00000;0.78349;-4.37500;,
 -10.00000;0.78349;-4.37500;,
 10.00000;1.00000;-4.25000;,
 -10.00000;1.00000;-4.25000;,
 10.00000;1.21651;-4.37500;,
 -10.00000;1.21651;-4.37500;,
 10.00000;1.21651;-4.62500;,
 -10.00000;1.21651;-4.62500;,
 10.00000;1.00000;-4.75000;,
 -10.00000;1.00000;-4.75000;,
 10.00000;1.00000;-4.50000;,
 10.00000;1.00000;-4.50000;,
 10.00000;1.00000;-4.50000;,
 10.00000;1.00000;-4.50000;,
 10.00000;1.00000;-4.50000;,
 10.00000;1.00000;-4.50000;,
 -10.00000;1.00000;-4.50000;,
 -10.00000;1.00000;-4.50000;,
 -10.00000;1.00000;-4.50000;,
 -10.00000;1.00000;-4.50000;,
 -10.00000;1.00000;-4.50000;,
 -10.00000;1.00000;-4.50000;,
 10.00000;1.00000;4.25000;,
 10.00000;0.78349;4.37500;,
 -10.00000;0.78349;4.37500;,
 -10.00000;1.00000;4.25000;,
 10.00000;0.78349;4.62500;,
 -10.00000;0.78349;4.62500;,
 10.00000;1.00000;4.75000;,
 -10.00000;1.00000;4.75000;,
 10.00000;1.21651;4.62500;,
 -10.00000;1.21651;4.62500;,
 10.00000;1.21651;4.37500;,
 -10.00000;1.21651;4.37500;,
 10.00000;1.00000;4.25000;,
 -10.00000;1.00000;4.25000;,
 10.00000;1.00000;4.50000;,
 10.00000;1.00000;4.50000;,
 10.00000;1.00000;4.50000;,
 10.00000;1.00000;4.50000;,
 10.00000;1.00000;4.50000;,
 10.00000;1.00000;4.50000;,
 -10.00000;1.00000;4.50000;,
 -10.00000;1.00000;4.50000;,
 -10.00000;1.00000;4.50000;,
 -10.00000;1.00000;4.50000;,
 -10.00000;1.00000;4.50000;,
 -10.00000;1.00000;4.50000;,
 -8.00000;8.50000;-0.10000;,
 8.00000;8.50000;-0.10000;,
 8.00000;5.50000;-0.10000;,
 -8.00000;5.50000;-0.10000;,
 8.00000;8.50000;0.10000;,
 8.00000;5.50000;0.10000;,
 -8.00000;8.50000;0.10000;,
 -8.00000;5.50000;0.10000;,
 4.65000;9.20000;-0.15000;,
 5.35000;9.20000;-0.15000;,
 5.35000;8.30000;-0.15000;,
 4.65000;8.30000;-0.15000;,
 5.35000;9.20000;-0.15000;,
 5.35000;9.20000;0.15000;,
 5.35000;8.30000;0.15000;,
 5.35000;8.30000;-0.15000;,
 5.35000;9.20000;0.15000;,
 4.65000;9.20000;0.15000;,
 4.65000;8.30000;0.15000;,
 5.35000;8.30000;0.15000;,
 4.65000;9.20000;0.15000;,
 4.65000;9.20000;-0.15000;,
 4.65000;8.30000;-0.15000;,
 4.65000;8.30000;0.15000;,
 5.35000;9.20000;-0.15000;,
 4.65000;9.20000;-0.15000;,
 4.65000;8.30000;-0.15000;,
 5.35000;8.30000;-0.15000;,
 -5.35000;9.20000;-0.15000;,
 -4.65000;9.20000;-0.15000;,
 -4.65000;8.30000;-0.15000;,
 -5.35000;8.30000;-0.15000;,
 -4.65000;9.20000;-0.15000;,
 -4.65000;9.20000;0.15000;,
 -4.65000;8.30000;0.15000;,
 -4.65000;8.30000;-0.15000;,
 -4.65000;9.20000;0.15000;,
 -5.35000;9.20000;0.15000;,
 -5.35000;8.30000;0.15000;,
 -4.65000;8.30000;0.15000;,
 -5.35000;9.20000;0.15000;,
 -5.35000;9.20000;-0.15000;,
 -5.35000;8.30000;-0.15000;,
 -5.35000;8.30000;0.15000;,
 -4.65000;9.20000;-0.15000;,
 -5.35000;9.20000;-0.15000;,
 -5.35000;8.30000;-0.15000;,
 -4.65000;8.30000;-0.15000;;
 
 180;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 3;14,1,0;,
 3;15,4,1;,
 3;16,6,4;,
 3;17,8,6;,
 3;18,10,8;,
 3;19,12,10;,
 3;20,3,2;,
 3;21,2,5;,
 3;22,5,7;,
 3;23,7,9;,
 3;24,9,11;,
 3;25,11,13;,
 4;26,27,28,29;,
 4;27,30,31,28;,
 4;30,32,33,31;,
 4;32,34,35,33;,
 4;34,36,37,35;,
 4;36,38,39,37;,
 3;40,27,26;,
 3;41,30,27;,
 3;42,32,30;,
 3;43,34,32;,
 3;44,36,34;,
 3;45,38,36;,
 3;46,29,28;,
 3;47,28,31;,
 3;48,31,33;,
 3;49,33,35;,
 3;50,35,37;,
 3;51,37,39;,
 4;52,53,54,55;,
 4;53,56,57,54;,
 4;56,58,59,57;,
 4;58,60,61,59;,
 4;60,62,63,61;,
 4;62,64,65,63;,
 3;66,53,52;,
 3;67,56,53;,
 3;68,58,56;,
 3;69,60,58;,
 3;70,62,60;,
 3;71,64,62;,
 3;72,55,54;,
 3;73,54,57;,
 3;74,57,59;,
 3;75,59,61;,
 3;76,61,63;,
 3;77,63,65;,
 4;78,79,80,81;,
 4;79,82,83,80;,
 4;82,84,85,83;,
 4;84,86,87,85;,
 4;86,88,89,87;,
 4;88,90,91,89;,
 3;92,79,78;,
 3;93,82,79;,
 3;94,84,82;,
 3;95,86,84;,
 3;96,88,86;,
 3;97,90,88;,
 3;98,81,80;,
 3;99,80,83;,
 3;100,83,85;,
 3;101,85,87;,
 3;102,87,89;,
 3;103,89,91;,
 4;104,105,106,107;,
 4;105,108,109,106;,
 4;108,110,111,109;,
 4;110,112,113,111;,
 4;112,114,115,113;,
 4;114,116,117,115;,
 3;118,105,104;,
 3;119,108,105;,
 3;120,110,108;,
 3;121,112,110;,
 3;122,114,112;,
 3;123,116,114;,
 3;124,107,106;,
 3;125,106,109;,
 3;126,109,111;,
 3;127,111,113;,
 3;128,113,115;,
 3;129,115,117;,
 4;130,131,132,133;,
 4;131,134,135,132;,
 4;134,136,137,135;,
 4;136,138,139,137;,
 4;138,140,141,139;,
 4;140,142,143,141;,
 3;144,131,130;,
 3;145,134,131;,
 3;146,136,134;,
 3;147,138,136;,
 3;148,140,138;,
 3;149,142,140;,
 3;150,133,132;,
 3;151,132,135;,
 3;152,135,137;,
 3;153,137,139;,
 3;154,139,141;,
 3;155,141,143;,
 4;156,157,158,159;,
 4;157,160,161,158;,
 4;160,162,163,161;,
 4;162,164,165,163;,
 4;164,166,167,165;,
 4;166,168,169,167;,
 3;170,157,156;,
 3;171,160,157;,
 3;172,162,160;,
 3;173,164,162;,
 3;174,166,164;,
 3;175,168,166;,
 3;176,159,158;,
 3;177,158,161;,
 3;178,161,163;,
 3;179,163,165;,
 3;180,165,167;,
 3;181,167,169;,
 4;182,183,184,185;,
 4;183,186,187,184;,
 4;186,188,189,187;,
 4;188,190,191,189;,
 4;190,192,193,191;,
 4;192,194,195,193;,
 3;196,183,182;,
 3;197,186,183;,
 3;198,188,186;,
 3;199,190,188;,
 3;200,192,190;,
 3;201,194,192;,
 3;202,185,184;,
 3;203,184,187;,
 3;204,187,189;,
 3;205,189,191;,
 3;206,191,193;,
 3;207,193,195;,
 4;208,209,210,211;,
 4;209,212,213,210;,
 4;212,214,215,213;,
 4;214,216,217,215;,
 4;216,218,219,217;,
 4;218,220,221,219;,
 3;222,209,208;,
 3;223,212,209;,
 3;224,214,212;,
 3;225,216,214;,
 3;226,218,216;,
 3;227,220,218;,
 3;228,211,210;,
 3;229,210,213;,
 3;230,213,215;,
 3;231,215,217;,
 3;232,217,219;,
 3;233,219,221;,
 4;234,235,236,237;,
 4;235,238,239,236;,
 4;238,240,241,239;,
 4;240,234,237,241;,
 4;240,238,235,234;,
 4;237,236,239,241;,
 4;242,243,244,245;,
 4;246,247,248,249;,
 4;250,251,252,253;,
 4;254,255,256,257;,
 4;254,247,258,259;,
 4;260,261,248,257;,
 4;262,263,264,265;,
 4;266,267,268,269;,
 4;270,271,272,273;,
 4;274,275,276,277;,
 4;274,267,278,279;,
 4;280,281,268,277;;
 
 MeshMaterialList {
  2;
  180;
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
  1,
  1,
  1,
  1,
  1,
  1,
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
   0.800000;0.439216;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\barricade.png";
   }
  }
 }
 MeshNormals {
  34;
  0.000000;1.000000;0.000000;,
  0.000000;0.447214;-0.894427;,
  0.458832;0.397360;-0.794719;,
  1.000000;0.000000;0.000000;,
  0.000000;-0.447214;0.894427;,
  -0.458832;-0.397360;0.794719;,
  -1.000000;0.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;-0.447214;-0.894427;,
  0.458832;-0.397360;-0.794719;,
  0.000000;0.447214;0.894427;,
  -0.458832;0.397360;0.794719;,
  -0.000000;-0.500000;-0.866025;,
  -0.000000;-1.000000;0.000000;,
  -0.000000;-0.500000;0.866025;,
  0.000000;0.500000;0.866025;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.500000;0.866025;0.000000;,
  0.500000;-0.866025;-0.000000;,
  -0.500000;-0.866025;0.000000;,
  0.000000;0.000000;-1.000000;,
  -0.000000;-0.500000;-0.866025;,
  -0.000000;-1.000000;0.000000;,
  -0.000000;-0.500000;0.866025;,
  0.000000;0.500000;0.866025;,
  0.000000;1.000000;0.000000;,
  0.458832;-0.397360;0.794719;,
  -0.458832;0.397360;-0.794719;,
  0.458832;0.397360;0.794719;,
  -0.458832;-0.397360;-0.794719;,
  0.000000;0.500000;-0.866025;,
  -0.500000;0.866025;0.000000;,
  0.000000;0.500000;-0.866025;;
  180;
  4;1,2,2,1;,
  4;3,3,3,3;,
  4;27,4,4,27;,
  4;4,5,5,4;,
  4;6,6,6,6;,
  4;28,1,1,28;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  4;8,9,9,8;,
  4;3,3,3,3;,
  4;29,10,10,29;,
  4;10,11,11,10;,
  4;6,6,6,6;,
  4;30,8,8,30;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  4;8,9,9,8;,
  4;3,3,3,3;,
  4;29,10,10,29;,
  4;10,11,11,10;,
  4;6,6,6,6;,
  4;30,8,8,30;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  4;1,2,2,1;,
  4;3,3,3,3;,
  4;27,4,4,27;,
  4;4,5,5,4;,
  4;6,6,6,6;,
  4;28,1,1,28;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  4;12,12,12,12;,
  4;13,13,13,13;,
  4;14,14,14,14;,
  4;15,15,15,15;,
  4;16,16,16,16;,
  4;31,31,31,31;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  4;18,18,18,18;,
  4;3,3,3,3;,
  4;19,19,19,19;,
  4;20,20,20,20;,
  4;6,6,6,6;,
  4;32,32,32,32;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;21,21,21;,
  3;21,21,21;,
  3;21,21,21;,
  3;21,21,21;,
  3;21,21,21;,
  3;21,21,21;,
  4;18,18,18,18;,
  4;3,3,3,3;,
  4;19,19,19,19;,
  4;20,20,20,20;,
  4;6,6,6,6;,
  4;32,32,32,32;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;17,17,17;,
  3;21,21,21;,
  3;21,21,21;,
  3;21,21,21;,
  3;21,21,21;,
  3;21,21,21;,
  3;21,21,21;,
  4;22,22,22,22;,
  4;23,23,23,23;,
  4;24,24,24,24;,
  4;25,25,25,25;,
  4;26,26,26,26;,
  4;33,33,33,33;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  4;22,22,22,22;,
  4;23,23,23,23;,
  4;24,24,24,24;,
  4;25,25,25,25;,
  4;26,26,26,26;,
  4;33,33,33,33;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  4;21,21,21,21;,
  4;3,3,3,3;,
  4;17,17,17,17;,
  4;6,6,6,6;,
  4;0,0,0,0;,
  4;7,7,7,7;,
  4;21,21,21,21;,
  4;3,3,3,3;,
  4;17,17,17,17;,
  4;6,6,6,6;,
  4;0,0,0,0;,
  4;7,7,7,7;,
  4;21,21,21,21;,
  4;3,3,3,3;,
  4;17,17,17,17;,
  4;6,6,6,6;,
  4;0,0,0,0;,
  4;7,7,7,7;;
 }
 MeshTextureCoords {
  282;
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
  -0.850765;-0.935188;,
  1.850765;-0.935188;,
  1.850765;-0.428651;,
  -0.850765;-0.428651;,
  1.850765;-0.935188;,
  1.850765;-0.428651;,
  -0.850765;-0.935188;,
  -0.850765;-0.428651;,
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
  1.000000;0.000000;;
 }
}
