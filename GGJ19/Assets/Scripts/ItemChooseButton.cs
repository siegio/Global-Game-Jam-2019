using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ItemChooseButton : MonoBehaviour, ISelectHandler {
	public GameObject throwableObject;
	public string itemName = "Object~~";

	public void OnSelect(BaseEventData eventData) {
		GameController.selectedThrowableObject = throwableObject;
	}
}
