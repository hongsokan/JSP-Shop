package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Board;

public class BoardDao2 {

	public boolean insert(Board board) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println(board);
		int num = 0;
		String sql1 = "select shop_boardseq.nextval from dual";
		String sql2 = "insert into shop_board " + " (num,name, pass, subject, content, file1, regdate,"
				+ " readcnt, ref,reflevel,refstep) " + " values(?,?,?,?,?,?,sysdate,0,?,?,?)";
		int ref = 0, reflevel = 0, refstep = 0;

		try {
			pstmt = conn.prepareStatement(sql1);
			rs = pstmt.executeQuery();
			if (rs.next())
				num = rs.getInt(1);

			// ����ϰ��
			if (board.getNum() > 0) {
				ref = board.getRef();
				reflevel = board.getReflevel() + 1;
				refstep = board.getRefstep() + 1;

			} else {
				ref = num;
			}

			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1, num);
			pstmt.setString(2, board.getName());
			pstmt.setString(3, board.getPass());
			pstmt.setString(4, board.getSubject());
			pstmt.setString(5, board.getContent());
			pstmt.setString(6, board.getFile1());
			pstmt.setInt(7, ref);
			pstmt.setInt(8, reflevel);
			pstmt.setInt(9, refstep);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, null);
		}

		return false;
	}

	public int boardCount() {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select count(*) from shop_board");
			rs = pstmt.executeQuery();
			rs.next();
			return rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return 0;
	}

	public List<Board> list(int pageNum, int limit) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Board> list = new ArrayList<Board>();

		String sql = 
				"select * from ( select rownum rnum ,a.* "
				+" from (select * from shop_board order by ref desc , refstep) a )"
				+" where rnum between 3 and 5";
				
			
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Board b = new Board();
				b.setNum(rs.getInt("num"));
				b.setName(rs.getString("name"));
				b.setPass(rs.getString("pass"));
				b.setSubject(rs.getString("subject"));
				b.setContent(rs.getString("content"));
				b.setFile1(rs.getString("file1"));
				b.setRef(rs.getInt("ref"));
				b.setReflevel(rs.getInt("reflevel"));
				b.setRefstep(rs.getInt("refstep"));
				b.setReadcnt(rs.getInt("readcnt"));
				b.setRegdate(rs.getTimestamp("regdate"));
				list.add(b);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return null;
	}

	public Board selectOne(int num) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from shop_board where num =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Board b = new Board();
				b.setNum(rs.getInt("num"));
				b.setName(rs.getString("name"));
				b.setPass(rs.getString("pass"));
				b.setSubject(rs.getString("subject"));
				b.setContent(rs.getString("content"));
				b.setFile1(rs.getString("file1"));
				b.setRef(rs.getInt("ref"));
				b.setReflevel(rs.getInt("reflevel"));
				b.setRefstep(rs.getInt("refstep"));
				b.setReadcnt(rs.getInt("readcnt"));
				b.setRegdate(rs.getTimestamp("regdate"));
				return b;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return null;
	}

	public void readcntadd(int num) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "update shop_board set readcnt = readcnt + 1" + " where num =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, null);
		}
	}

	public void refstepadd(int ref, int refstep) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "update shop_board set refstep = refstep + 1" + " where ref = ? and refstep > ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, refstep);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, null);
		}
	}

	public boolean update(Board board) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "update shop_board set name=?,subject=?,content=?,file1=?" + " where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getName());
			pstmt.setString(2, board.getSubject());
			pstmt.setString(3, board.getContent());
			pstmt.setString(4, board.getFile1());
			pstmt.setInt(5, board.getNum());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, null);
		}
		return false;

	}

	public boolean delete(int num) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete from shop_board where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, null);
		}
		return false;

	}

}