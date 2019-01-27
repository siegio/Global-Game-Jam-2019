using UnityEngine;

public class FunkyMusicMixer : MonoBehaviour
{
	public AudioSource sourceBand;
	public AudioSource sourceOrchestra;
	public AudioSource sourceSynth;

	public static FunkyMusicMixer instance;

    void Start() {
        sourceBand.volume = 1f;
        sourceOrchestra.volume = 1f;
        sourceSynth.volume = 1f;
		DontDestroyOnLoad(gameObject);
		instance = this;
    }

    public void EnableBand() {
        sourceBand.volume = 1f;
    }
    public void DisableBand() {
        sourceBand.volume = 0f;
    }

    public void EnableOrchestra() {
        sourceOrchestra.volume = 1f;
    }
    public void DisableOrchestra() {
        sourceOrchestra.volume = 0f;
    }

    public void EnableSynth() {
        sourceSynth.volume = 1f;
    }
    public void DisableSynth() {
        sourceSynth.volume = 0f;
    }
}