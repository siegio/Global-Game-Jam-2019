using UnityEngine;
using UnityEngine.UI;

public class KillElectricityButton : MonoBehaviour
{
    // Start is called before the first frame update
    void Start() {
		(gameObject.GetComponent(typeof(Button)) as Button).onClick.AddListener(() => { Debug.Log("bye!");  Application.Quit(); });
	}

    // Update is called once per frame
    void Update()
    {
        
    }
}
