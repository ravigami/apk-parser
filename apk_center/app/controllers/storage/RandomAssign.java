package controllers.storage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class RandomAssign {

	final static String[] names = { "luofei", "wangjing", "liujiusi", "miaozhijian", "Lvjing", "xiepeng",
			"jiangxingbo", "xurongyang", "jiangmengjing", "fengxiaoping" };

	final static String[] patterns = { "Factory", "Builder", "Prototype", "Singleton", "Adapter", "Bridge",
			"Composite", "Decorator", "Facade", "Proxy", "Chain of Responsibility", "Template Method", "Command",
			"Observer", "Strategy", "Visitor", "Future", "Read-Write-Lock", "Worker Thread", "Guarded Suspension",
			"Producer Consumer", "Two-phase Termination", "Thread-Specific Storage" };

	static Map<String, ArrayList<String>> assigns = new HashMap<String, ArrayList<String>>();

	static Random random = new Random(123);

	public static void main(String[] args) {
		do {
			for (String name : names) {
				assigns.put(name, new ArrayList<String>());
			}
			for (String name : names) {
				ArrayList<String> assigned = ((ArrayList<String>) assigns.get(name));
				for (int i = 0; i < (patterns.length / names.length) + 1; i++) {
					String pattern;
					do {
						pattern = patterns[random.nextInt(patterns.length)];
					} while (assigned.contains(pattern));
					assigned.add(pattern);
				}
			}
		} while (!isValid());
	}

	static boolean isValid() {
		boolean ret = false;
		Set<String> assignedPattern = new HashSet<String>();
		for (String name : names) {
			for (String pattern : (ArrayList<String>) assigns.get(name)) {
				assignedPattern.add(pattern);
			}
		}

		System.out.println("Assign=" + assignedPattern.size() + "/" + patterns.length);
		if (assignedPattern.size() < patterns.length) {
			ret = false;
		} else {
			printResult();
			ret = true;
		}
		assigns.clear();
		return ret;
	}

	static void printResult() {
		for (String name : names) {
			List<String> assigned = (ArrayList<String>) assigns.get(name);
			Collections.sort(assigned);

			System.out.print(name + "," + assigned.size() + "\t");
			for (String pattern : assigned) {
				System.out.print(pattern + ",");
			}
			System.out.println();
		}
	}
}
