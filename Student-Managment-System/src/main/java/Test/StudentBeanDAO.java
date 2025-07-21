package Test;
import java.sql.*;

public class StudentBeanDAO {
	public StudentBean sb = null;

	public StudentBean Login(String rollNo) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Student91 where rollNo=?");
			PreparedStatement ps2 = con.prepareStatement("select * from Marks91 where rollno = ?");
			ps.setString(1, rollNo);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				sb = new StudentBean();
				sb.setRollNo(rs.getString(1));
				sb.setName(rs.getString(2));

				ps2.setString(1, rollNo);
				ResultSet rs2 = ps2.executeQuery();

				if (rs2.next()) {
					MarksBean mb = new MarksBean();
					mb.setCoreJava(rs2.getInt(2));
					mb.setAdvJava(rs2.getInt(2));
					mb.setUi(rs2.getInt(3));
					mb.setDb(rs2.getInt(4));
					mb.setTools(rs2.getInt(5));

					sb.setMk(mb);
					int totalM = mb.getAdvJava() + mb.getCoreJava() + mb.getDb() + mb.getTools() + mb.getUi();
					sb.setTotMarks(totalM);
					int perc = totalM / 5;
					sb.setPer(perc);

					if (perc > 80) {

					} else if (perc > 70) {
						sb.setResult("A");
					} else if (perc > 60) {
						sb.setResult("B");
					} else if (perc > 50) {
						sb.setResult("C");
					} else if (perc > 40) {
						sb.setResult("D");
					}
					else {
						sb.setResult("Fail: Tera baap ab pelega..");
					}

				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sb;
	}

}