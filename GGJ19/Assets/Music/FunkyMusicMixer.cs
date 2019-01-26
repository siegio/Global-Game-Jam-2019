using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FunkyMusicMixer : MonoBehaviour
{
    public GameObject funkyMusicBand;
    public GameObject funkyMusicOrchestra;
    public GameObject funkyMusicSynth;

    private AudioSource sourceBand;
    private AudioSource sourceOrchestra;
    private AudioSource sourceSynth;

    void Start() {
        sourceBand = funkyMusicBand.GetComponent<AudioSource>();
        sourceBand.volume = 1f;
        sourceOrchestra = funkyMusicOrchestra.GetComponent<AudioSource>();
        sourceOrchestra.volume = 1f;
        sourceSynth = funkyMusicSynth.GetComponent<AudioSource>();
        sourceSynth.volume = 1f;
    }

    public void EnableBand() {
        sourceBand = funkyMusicBand.GetComponent<AudioSource>();
        sourceBand.volume = 1f;
    }
    public void DisableBand() {
        sourceBand = funkyMusicBand.GetComponent<AudioSource>();
        sourceBand.volume = 0f;
    }

    public void EnableOrchestra() {
        sourceOrchestra = funkyMusicOrchestra.GetComponent<AudioSource>();
        sourceOrchestra.volume = 1f;
    }
    public void DisableOrchestra() {
        sourceOrchestra = funkyMusicOrchestra.GetComponent<AudioSource>();
        sourceOrchestra.volume = 0f;
    }

    public void EnableSynth() {
        sourceSynth = funkyMusicSynth.GetComponent<AudioSource>();
        sourceSynth.volume = 1f;
    }
    public void DisableSynth() {
        sourceSynth = funkyMusicSynth.GetComponent<AudioSource>();
        sourceSynth.volume = 0f;
    }
}