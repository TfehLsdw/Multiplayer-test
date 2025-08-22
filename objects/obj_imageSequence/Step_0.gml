var timer = fadeTime*60

image_alpha -= 1/timer

if (image_alpha <= 0)
{
	instance_destroy()
}