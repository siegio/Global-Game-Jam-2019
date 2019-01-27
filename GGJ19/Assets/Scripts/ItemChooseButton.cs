using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ItemChooseButton : MonoBehaviour, ISelectHandler {
	public GameObject throwableObject;

	public void OnSelect(BaseEventData eventData) {
		GameController.selectedThrowableObject = throwableObject;
	}
}
