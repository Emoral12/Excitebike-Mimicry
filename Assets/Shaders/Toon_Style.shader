Shader"Custom/ToonShader"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _MetallicTex ("Metallic (R)", 2D) = "white" {}
        _Metallic ("Metallic", Range(0,1)) = 0.0
        _RampTex ("Ramp Texture", 2D) = "white" {}
    }
    SubShader
    {
        Tags
        {
            "Queue" = "Geometry"
        }
        
        CGPROGRAM
        
        #pragma surface surf ToonRamp
        
        float4 _Color;
        sampler2D _MetallicTex;
        half _Metallic;
        sampler2D _RampTex;

        float4 LightingToonRamp(SurfaceOutput s, fixed3 lightDir, half atten)
        {
            float diff = dot(s.Normal, lightDir);
            float h = diff * 0.5 + 0.5;
            float2 rh = h;
            float3 ramp = tex2D(_RampTex, rh).rgb;

            float4 c;
            c.rgb = s.Albedo * _LightColor0.rgb * (ramp);
            c.a = s.Alpha;
            return c;
        }

        struct Input
        {
            float2 uv_MainTex;
        };

        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _Color.rgb;
            o.Specular = _SpecColor.rgb;
        }
            ENDCG
        }
    FallBack"Diffuse"
}
