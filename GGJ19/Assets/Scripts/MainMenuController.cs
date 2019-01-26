using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MainMenuController : MonoBehaviour
{
	public Button startGameButton;

    // Start is called before the first frame update
    void Start() {
		startGameButton.onClick.AddListener(() => { SceneManager.LoadScene("MainMenuScene", LoadSceneMode.Single); });
	}

    // Update is called once per frame
    void Update()
    {
        
    }
}
