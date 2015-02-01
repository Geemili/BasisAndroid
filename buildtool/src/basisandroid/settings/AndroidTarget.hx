package basisandroid.settings;

import basis.settings.Target;

class AndroidTarget extends Target
{
	//Settings
	static inline public var EMULATOR:String = "emulator";
	static inline public var APP_BUILD_NUMBER:String = "appBuildNumber";
	static inline public var APP_VERSION:String = "appVersion";
	static inline public var APP_PACKAGE:String = "appPackage";
	static inline public var RESOURCE_DIRECTORIES:String = "resourceDirectories";
	static inline public var ANDROID_VERSION:String = "androidVersion";
	static inline public var NO_ANT:String = "noAnt";
	
	//Collections
	static inline public var FRAMEWORKS:String = "frameworks";
	static inline public var PERMISSIONS:String = "permissions";

	override public function getSettingsContext(?obj:Dynamic=null):Dynamic
	{
		obj = super.getSettingsContext(obj);
		Reflect.setField(obj, AndroidTarget.PERMISSIONS, getCollection(AndroidTarget.PERMISSIONS));
		return obj;
	}
	
}