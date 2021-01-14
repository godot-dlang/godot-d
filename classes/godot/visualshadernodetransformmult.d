/**
Multiplies $(D Transform) by $(D Transform) within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodetransformmult;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
Multiplies $(D Transform) by $(D Transform) within the visual shader graph.

A multiplication operation on two transforms (4x4 matrices), with support for different multiplication operators.
*/
@GodotBaseClass struct VisualShaderNodeTransformMult
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeTransformMult";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_operator") GodotMethod!(VisualShaderNodeTransformMult.Operator) getOperator;
		@GodotName("set_operator") GodotMethod!(void, long) setOperator;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeTransformMult other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualShaderNodeTransformMult.
	/// Note: use `memnew!VisualShaderNodeTransformMult` instead.
	static VisualShaderNodeTransformMult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeTransformMult");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeTransformMult)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Operator : int
	{
		/**
		Multiplies transform `a` by the transform `b`.
		*/
		opAxb = 0,
		/**
		Multiplies transform `b` by the transform `a`.
		*/
		opBxa = 1,
		/**
		Performs a component-wise multiplication of transform `a` by the transform `b`.
		*/
		opAxbComp = 2,
		/**
		Performs a component-wise multiplication of transform `b` by the transform `a`.
		*/
		opBxaComp = 3,
	}
	/// 
	enum Constants : int
	{
		opAxb = 0,
		opBxa = 1,
		opAxbComp = 2,
		opBxaComp = 3,
	}
	/**
	
	*/
	VisualShaderNodeTransformMult.Operator getOperator() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeTransformMult.Operator)(GDNativeClassBinding.getOperator, _godot_object);
	}
	/**
	
	*/
	void setOperator(in long op)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOperator, _godot_object, op);
	}
	/**
	The multiplication type to be performed on the transforms. See $(D operator) for options.
	*/
	@property VisualShaderNodeTransformMult.Operator operator()
	{
		return getOperator();
	}
	/// ditto
	@property void operator(long v)
	{
		setOperator(v);
	}
}
