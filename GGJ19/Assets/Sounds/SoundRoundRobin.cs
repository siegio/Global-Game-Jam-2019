using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundRoundRobin : MonoBehaviour
{
    public AudioClip[] audioClips;
    private AudioSource audioSource;

    private void OnCollisionEnter(Collision collision)
    {
        int i = Random.Range(0, audioClips.Length);
        GetComponent<AudioSource>().PlayOneShot(audioClips[i]);
    }
}