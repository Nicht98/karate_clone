import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.intuit.karate.Runner;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class ParallelBuilderWithCucumberReport {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:Ztrain_API/User/").tags("@testBooks").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
        generateCucumberReport(results.getReportDir());
        generateReport(results.getReportDir());
    }

    // reportDirLocation --> C:\Data\GitHub\KarateFrameworkTutorial\target\surefire-reports
    private void generateCucumberReport(String reportDirLocation) {

        File reportDir = new File(reportDirLocation);
        Collection<File> jsonCollection = FileUtils.listFiles(reportDir, new String[] {"json"}, true);

        List<String> jsonFiles = new ArrayList<String>();
        jsonCollection.forEach(file -> jsonFiles.add(file.getAbsolutePath()));

        Configuration configuration = new Configuration(reportDir, "Ztrain_API");
       // target\surefire-reports\Ztrain_API.User.testbooks.json
        ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, configuration);
        reportBuilder.generateReports();
    }

    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "Ztrain_API");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}