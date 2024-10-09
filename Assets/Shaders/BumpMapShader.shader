Shader "Midterm/BumpMapShader"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        
        _myDiffuse("Diffuse", 2D) = "white" {}
        _Metallic ("Metallic", Range(0,1)) = 0.0
        _myBump ("BumpMap", 2D) = "white" {}
        _bumpLevel ("ScaleBump", Range(0,100)) = 10
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }

        CGPROGRAM
       
        #pragma surface surf Lambert

        sampler2D _myDiffuse;
        sampler2D _myBump;
        float _Metallic;
        fixed4 _Color;
        float _bumpLevel;

        struct Input
        {
            float2 uv_myDiffuse;
            float2 uv_myBump;
        };
 
        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo = tex2D(_myDiffuse, IN.uv_myDiffuse).rgb;
            o.Normal = UnpackNormal(tex2D(_myBump, IN.uv_myBump));
            o.Normal += float3(_bumpLevel,_bumpLevel,1);
        }
        ENDCG
    }
    FallBack "Diffuse"
}
