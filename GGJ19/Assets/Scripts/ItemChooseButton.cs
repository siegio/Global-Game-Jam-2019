using UnityEngine;
using UnityEngine.UI;

public class ItemChooseButton : MonoBehaviour
{
	public GameObject throwableObject;

    // Start is called before the first frame update
    void Start()
    {
		(gameObject.GetComponent(typeof(Button)) as Button).onClick.AddListener(() => { GameController.selectedThrowableObject = throwableObject; });
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
