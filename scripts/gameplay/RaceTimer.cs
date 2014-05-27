using UnityEngine;
using System.Collections;
using System;

public class RaceTimer : MonoBehaviour {

	Timer countdown;
	public int visibleTimer;

	private float startTime = -1;

	private void Start ()
	{
		countdown = new Timer (1f, visibleTimer);
	}

	private string DisplayAsStopwatch (float time)
	{
		string result = string.Empty;
		result = string.Format ("{0}:{1:00.000}",
		                        Math.Floor(time / 60f).ToString(),
		                        Math.Round (time % 60f, 3));
		return result;
	}

	private void Update ()
	{
		// countdown to 0, then destroy the Timer involved
		if (countdown != null && countdown.RunTimer())
		{
			visibleTimer--;
		}
		if (visibleTimer == 0 && startTime == -1)
		{
			startTime = Time.time;
			countdown = null;
		}

		if (countdown != null)
			TimerDisplay.TIME_DISPLAY = visibleTimer.ToString();
		else
			TimerDisplay.TIME_DISPLAY = DisplayAsStopwatch (Time.time - startTime);
	}
}
