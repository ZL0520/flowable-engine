package org.activiti.examples.bpmn.tasklistener;

import java.util.ArrayList;
import java.util.List;

import org.flowable.engine.delegate.TaskListener;
import org.flowable.task.service.delegate.DelegateTask;

/**
 * @author Tijs Rademakers
 */

public class TaskSimpleCompleteListener implements TaskListener {

    private static final long serialVersionUID = 1L;
    private static List<String> messages = new ArrayList<String>();

    public static List<String> getCurrentMessages() {
        return messages;
    }

    public static void clear() {
        messages.clear();
    }

    @Override
    public void notify(DelegateTask delegateTask) {
        messages.add("Complete Task Listener executed.");
    }
}
