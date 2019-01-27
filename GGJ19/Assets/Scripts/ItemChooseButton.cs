using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ItemChooseButton : MonoBehaviour, ISelectHandler {
	public GameObject throwableObject;
	public string itemName = "Object~~";
	public bool isActive = true;

	public virtual void OnSelect(BaseEventData eventData) {
		if (isActive) {
			GameController.selectedThrowableObject = throwableObject;
		}
	}
}
