Shader "Midterm/StencilBack"
{
    Properties
    {
        _MainTex ("Diffuse", 2D) = "white" {}
        //_Metallic ("Metallic", Range(0,1)) = 0.0
    }
    SubShader
    {
        Tags { "Queue" = "Geometry" }

        Stencil
        {
            Ref 1
            Comp notequal
            Pass keep
        }


        CGPROGRAM
        #pragma surface surf Lambert

        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };
        //float _Metallic;

        void surf (Input IN, inout SurfaceOutput o)
        {
            fixed4 c = tex2D (_MainTex, IN.uv_MainTex);
            o.Albedo = c.rgb;
            //o.Metallic = _Metallic;

        }
        ENDCG
    }
    FallBack "Diffuse"
}
