function EnemyHit(){

var _damage = argumnet0;

hp -= _damage;
flash = true;
if (hp > 0)
{
	state = ENEMYSTATE.HIT;
	hitNpw = true;
}
else
{
	state = ENEMYSTATE.DEAD;
}
}