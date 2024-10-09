using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LUTScript : MonoBehaviour
{
    [SerializeField]
    public Material m_renderMaterial;

    void OnRenderImage(RenderTexture source, RenderTexture definition)
    {
        Debug.Log("OnRenderImagecalledTest");
        Graphics.Blit(source, definition, m_renderMaterial);
    }
}
