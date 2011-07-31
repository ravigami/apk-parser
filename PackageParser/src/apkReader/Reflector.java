package apkReader;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Reflector {

	public static void reflectInstance(String className, Object instance)
			throws IllegalAccessException, IllegalArgumentException,
			InvocationTargetException {
		System.out.println("Class " + className + " structure");
		Class secretClass = instance.getClass();

		// Print all the method names & execution result
		Method methods[] = secretClass.getDeclaredMethods();
		System.out.println("Access all " + methods.length + " methods");
		for (int i = 0; i < methods.length; i++) {
//			System.out.println("Method Name: " + methods[i].getName());
//			System.out.println("Return type: " + methods[i].getReturnType());
			methods[i].setAccessible(true);
//			System.out.println(methods[i].invoke(instance, EMPTY) + "\n");
		}

		// Print all the field names & values
		Field fields[] = secretClass.getDeclaredFields();
		System.out.println("Access all " + fields.length + " fields");
		for (int i = 0; i < fields.length; i++) {
			System.out.print("Field Name: " + fields[i].getName());
			fields[i].setAccessible(true);
			System.out.println(fields[i].get(instance) + "\n");
		}
	}
	
	public static void setField(String className, String fieldName, Object instance,Object value) {
		try {
			Field field;
			Class c = Class.forName(className);
			field = c.getDeclaredField(fieldName);
			field.setAccessible(true);
			field.set(instance,value);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return ;
	}

	public static Object getField(String className, String fieldName, Object instance) {
		try {
			Field field;
			Class c = Class.forName(className);
			field = c.getField(fieldName);
			field.setAccessible(true);
			Object fieldValue = field.get(instance);
			return fieldValue;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static Object getDeclaredField(String className, String fieldName,
			Object instance) {
		try {
			Field field;
			Class c = Class.forName(className);
			field = c.getDeclaredField(fieldName);
			field.setAccessible(true);
			Object fieldValue = field.get(instance);
			return fieldValue;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

}
