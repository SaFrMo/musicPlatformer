using UnityEngine;
using System.Collections;
using System;

public class TimerDisplay : MonoBehaviour {

	public static string TIME_DISPLAY = string.Empty;

	private void OnGUI ()
	{
		float width = Screen.width / 2f;
		float height = 100f;
		GUI.Box (new Rect (Screen.width / 2 - width / 2,
		                   10f,
		                   width,
		                   height), TIME_DISPLAY);
	}
}
