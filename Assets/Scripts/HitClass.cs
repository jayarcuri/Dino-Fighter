using UnityEngine;
using System.Collections;

public class HitClass
{
	public int priority { get; set; }
	public int hitstun { get; set; } 
	public int bStun { get; set; }
	public int dmg { get; set; }
	public float kB { get; set; }
	public float range { get; set; }
	public int playerID { get; set; }//ID for player who started move

	public HitClass(int inputPriority, float inputRange, int inputHitstun, 
	                 	int inputBlockstun, int inputDamage, float inputKnockback, int pID){
		priority = inputPriority;
		hitstun = inputHitstun;
		bStun = inputBlockstun; 
		dmg = inputDamage;
		kB = inputKnockback;
		range = inputRange;
		playerID = pID;
	}

	public HitClass(int inputPriority, float inputRange, int inputHitstun, 
	                int inputBlockstun, int inputDamage, float inputKnockback){
		priority = inputPriority;
		hitstun = inputHitstun;
		bStun = inputBlockstun; 
		dmg = inputDamage;
		kB = inputKnockback;
		range = inputRange;
		playerID = 2;
	}

	public void Clear(){
		priority = hitstun = bStun = dmg = 0;
		range = kB = 0f;
	}
}

