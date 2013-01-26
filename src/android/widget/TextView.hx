package android.widget;

import android.view.View;
import android.view.KeyEvent;

@:native("android.widget.TextView")
extern class TextView extends View
{
	public function setText(text:String):Void;
	public function setOnEditorActionListener(l:OnEditorActionListener):Void;
}

@:native("android.widget.TextView.OnEditorActionListener")
extern interface OnEditorActionListener{public function onEditorAction(v:TextView, actionId:Int, event:KeyEvent):Bool;}