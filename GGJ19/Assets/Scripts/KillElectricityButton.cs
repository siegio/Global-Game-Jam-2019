using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class KillElectricityButton : ItemChooseButton {

	public override void OnSelect(BaseEventData eventData) {
	}

	// Start is called before the first frame update
	void Start() {
		(gameObject.GetComponent(typeof(Button)) as Button).onClick.AddListener(() => { Debug.Log("bye!");  Application.Quit(); });
	}

    // Update is called once per frame
    void Update()
    {
        
    }
}
