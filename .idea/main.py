import tkinter as tk
from tkinter import messagebox, ttk
import mysql.connector


def get_db_connection():
    return mysql.connector.connect(
        host='localhost',
        user='nhlcapuser',
        password='',
        database='NHLSalaryCapTracker'
    )


def display_table(columns, data, title):
    table_window = tk.Toplevel()
    table_window.title(title)
    frame = ttk.Frame(table_window)
    frame.pack(expand=True, fill='both', padx=10, pady=10)
    table = ttk.Treeview(frame, columns=columns, show='headings')
    table.pack(expand=True, fill='both')

    for col in columns:
        table.heading(col, text=col)
        table.column(col, anchor='center')

    for row in data:
        table.insert('', 'end', values=row)

    scrollbar = ttk.Scrollbar(frame, orient="vertical", command=table.yview)
    table.configure(yscroll=scrollbar.set)
    scrollbar.pack(side='right', fill='y')


def query_options():
    def query_high_cap_hit():
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT player_id, team_id, cap_hit FROM Contracts WHERE cap_hit > 10000000")
        results = cursor.fetchall()
        conn.close()
        display_table(['Player ID', 'Team ID', 'Cap Hit'], results, "Players with Cap Hit > 10M")

    def query_all_players():
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT person_id, first_name, last_name, nationality, birthdate FROM Person")
        results = cursor.fetchall()
        conn.close()
        display_table(['Person ID', 'First Name', 'Last Name', 'Nationality', 'Birthdate'], results, "All Players")

    def query_position_and_cap():
        def perform_query():
            position = position_var.get()
            cap_hit_threshold = float(cap_hit_entry.get())
            conn = get_db_connection()
            cursor = conn.cursor()
            query = """
                SELECT p.person_id, p.first_name, p.last_name, pl.position, c.cap_hit
                FROM Players pl
                JOIN Contracts c ON pl.player_id = c.player_id
                JOIN Person p ON pl.player_id = p.person_id
                WHERE pl.position = %s AND c.cap_hit > %s
            """
            cursor.execute(query, (position, cap_hit_threshold))
            results = cursor.fetchall()
            conn.close()
            display_table(['Person ID', 'First Name', 'Last Name', 'Position', 'Cap Hit'], results,
                          "Players by Position and Cap Hit")

        query_window = tk.Toplevel()
        query_window.title("Query by Position and Cap Hit")
        query_window.geometry("400x200")

        tk.Label(query_window, text="Position:").pack()
        position_var = tk.Entry(query_window)
        position_var.pack()

        tk.Label(query_window, text="Min Cap Hit:").pack()
        cap_hit_entry = tk.Entry(query_window)
        cap_hit_entry.pack()

        search_btn = tk.Button(query_window, text="Search", command=perform_query)
        search_btn.pack(pady=10)

    def query_teams():
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT team_id, team_name, division, cap_space, cap_hit, roster_size FROM Teams")
        results = cursor.fetchall()
        conn.close()
        display_table(['Team ID', 'Team Name', 'Division', 'Cap Space', 'Cap Hit', 'Roster Size'], results, "All Teams")

    def query_head_coaches():
        conn = get_db_connection()
        cursor = conn.cursor()
        query = """
            SELECT p.person_id, p.first_name, p.last_name, c.team_id, c.role
            FROM Coaches c
            JOIN Person p ON c.coach_id = p.person_id
            WHERE c.role = 'Head Coach'
        """
        cursor.execute(query)
        results = cursor.fetchall()
        conn.close()
        display_table(['Person ID', 'First Name', 'Last Name', 'Team ID', 'Role'], results, "Head Coaches")

    def query_transactions():
        def perform_transaction_query():
            days = int(days_entry.get())
            conn = get_db_connection()
            cursor = conn.cursor()
            query = """
                SELECT player_id, origin_team_id, destination_team_id, transaction_date, transaction_type
                FROM Transactions
                WHERE transaction_date >= CURDATE() - INTERVAL %s DAY
            """
            cursor.execute(query, (days,))
            results = cursor.fetchall()
            conn.close()
            display_table(['Player ID', 'Origin Team ID', 'Destination Team ID', 'Date', 'Type'], results,
                          "Recent Transactions")

        transaction_window = tk.Toplevel()
        transaction_window.title("Query Transactions")
        transaction_window.geometry("300x150")

        tk.Label(transaction_window, text="Days Back:").pack()
        days_entry = tk.Entry(transaction_window)
        days_entry.pack()

        search_btn = tk.Button(transaction_window, text="Search", command=perform_transaction_query)
        search_btn.pack(pady=10)

    def query_teams_over_cap():
        conn = get_db_connection()
        cursor = conn.cursor()
        query = """
            SELECT team_id, team_name, cap_hit, cap_space
            FROM Teams
            WHERE cap_hit > cap_space
        """
        cursor.execute(query)
        results = cursor.fetchall()
        conn.close()
        display_table(['Team ID', 'Team Name', 'Cap Hit', 'Cap Space'], results, "Teams Over Cap")

    query_window = tk.Toplevel()
    query_window.title("Query Options")
    query_window.geometry("400x300")

    tk.Button(query_window, text="Players with Cap Hit > 10M", command=query_high_cap_hit).pack(pady=5)
    tk.Button(query_window, text="List All Players", command=query_all_players).pack(pady=5)
    tk.Button(query_window, text="Search by Position and Cap Hit", command=query_position_and_cap).pack(pady=5)
    tk.Button(query_window, text="List All Teams", command=query_teams).pack(pady=5)
    tk.Button(query_window, text="List Head Coaches", command=query_head_coaches).pack(pady=5)
    tk.Button(query_window, text="View Transactions", command=query_transactions).pack(pady=5)
    tk.Button(query_window, text="Teams Over Cap", command=query_teams_over_cap).pack(pady=5)


def insert_person():
    def insert_data():
        cap_hit_value = cap_hit_entry.get().strip()
        if type_var.get() == "Player" and (not cap_hit_value or not cap_hit_value.isdigit()):
            messagebox.showerror("Error", "Cap Hit must be a valid number.")
            return

        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute(
            "INSERT INTO Person (first_name, middle_name, last_name, birthdate, nationality) VALUES (%s, %s, %s, %s, %s)",
            (first_name_entry.get(), middle_name_entry.get(), last_name_entry.get(), birthdate_entry.get(),
             nationality_entry.get())
        )
        person_id = cursor.lastrowid
        if type_var.get() == "Player":
            cursor.execute(
                "INSERT INTO Players (player_id, position, number, height, weight) VALUES (%s, %s, %s, %s, %s)",
                (person_id, position_entry.get(), number_entry.get(), height_entry.get(), weight_entry.get())
            )
            cursor.execute(
                "INSERT INTO Contracts (player_id, team_id, cap_hit) VALUES (%s, %s, %s)",
                (person_id, team_id_entry.get(), cap_hit_value)
            )
        elif type_var.get() == "Coach":
            cursor.execute(
                "INSERT INTO Coaches (coach_id, team_id, role) VALUES (%s, %s, %s)",
                (person_id, team_id_entry.get(), role_entry.get())
            )
        conn.commit()
        conn.close()
        messagebox.showinfo("Insert", f"{type_var.get()} inserted successfully.")

    insert_person_window = tk.Toplevel()
    insert_person_window.title("Insert Player/Coach")
    insert_person_window.geometry("400x600")

    type_var = tk.StringVar(value="Player")
    tk.Label(insert_person_window, text="Type:").pack()
    tk.Radiobutton(insert_person_window, text="Player", variable=type_var, value="Player").pack()
    tk.Radiobutton(insert_person_window, text="Coach", variable=type_var, value="Coach").pack()

    tk.Label(insert_person_window, text="First Name:").pack()
    first_name_entry = tk.Entry(insert_person_window)
    first_name_entry.pack()

    tk.Label(insert_person_window, text="Middle Name:").pack()
    middle_name_entry = tk.Entry(insert_person_window)
    middle_name_entry.pack()

    tk.Label(insert_person_window, text="Last Name:").pack()
    last_name_entry = tk.Entry(insert_person_window)
    last_name_entry.pack()

    tk.Label(insert_person_window, text="Birthdate (YYYY-MM-DD):").pack()
    birthdate_entry = tk.Entry(insert_person_window)
    birthdate_entry.pack()

    tk.Label(insert_person_window, text="Nationality:").pack()
    nationality_entry = tk.Entry(insert_person_window)
    nationality_entry.pack()

    tk.Label(insert_person_window, text="Position (Players only):").pack()
    position_entry = tk.Entry(insert_person_window)
    position_entry.pack()

    tk.Label(insert_person_window, text="Number (Players only):").pack()
    number_entry = tk.Entry(insert_person_window)
    number_entry.pack()

    tk.Label(insert_person_window, text="Height (Players only, cm):").pack()
    height_entry = tk.Entry(insert_person_window)
    height_entry.pack()

    tk.Label(insert_person_window, text="Weight (Players only, kg):").pack()
    weight_entry = tk.Entry(insert_person_window)
    weight_entry.pack()

    tk.Label(insert_person_window, text="Team ID:").pack()
    team_id_entry = tk.Entry(insert_person_window)
    team_id_entry.pack()

    tk.Label(insert_person_window, text="Cap Hit (Players only):").pack()
    cap_hit_entry = tk.Entry(insert_person_window)
    cap_hit_entry.pack()

    tk.Label(insert_person_window, text="Role (Coaches only):").pack()
    role_entry = tk.Entry(insert_person_window)
    role_entry.pack()

    submit_btn = tk.Button(insert_person_window, text="Add Person", command=insert_data)
    submit_btn.pack(pady=5)


def insert_team():
    def perform_team_insertion():
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute(
            "INSERT INTO Locations (city, state, nation) VALUES (%s, %s, %s)",
            (city_entry.get(), state_entry.get(), nation_entry.get())
        )
        location_id = cursor.lastrowid
        cursor.execute(
            "INSERT INTO Teams (location, team_name, division, cap_space, cap_hit, roster_size) VALUES (%s, %s, %s, %s, %s, %s)",
            (location_id, team_name_entry.get(), division_entry.get(), float(cap_space_entry.get()),
             float(cap_hit_team_entry.get()), int(roster_size_entry.get()))
        )
        conn.commit()
        conn.close()
        messagebox.showinfo("Insert", "Team and Location inserted successfully.")

    insert_team_window = tk.Toplevel()
    insert_team_window.title("Insert Team")
    insert_team_window.geometry("400x500")

    tk.Label(insert_team_window, text="City:").pack()
    city_entry = tk.Entry(insert_team_window)
    city_entry.pack()

    tk.Label(insert_team_window, text="State:").pack()
    state_entry = tk.Entry(insert_team_window)
    state_entry.pack()

    tk.Label(insert_team_window, text="Nation:").pack()
    nation_entry = tk.Entry(insert_team_window)
    nation_entry.pack()

    tk.Label(insert_team_window, text="Team Name:").pack()
    team_name_entry = tk.Entry(insert_team_window)
    team_name_entry.pack()

    tk.Label(insert_team_window, text="Division:").pack()
    division_entry = tk.Entry(insert_team_window)
    division_entry.pack()

    tk.Label(insert_team_window, text="Cap Space:").pack()
    cap_space_entry = tk.Entry(insert_team_window)
    cap_space_entry.pack()

    tk.Label(insert_team_window, text="Cap Hit:").pack()
    cap_hit_team_entry = tk.Entry(insert_team_window)
    cap_hit_team_entry.pack()

    tk.Label(insert_team_window, text="Roster Size:").pack()
    roster_size_entry = tk.Entry(insert_team_window)
    roster_size_entry.pack()

    team_submit_btn = tk.Button(insert_team_window, text="Add Team", command=perform_team_insertion)
    team_submit_btn.pack(pady=5)


def insert():
    insert_window = tk.Toplevel()
    insert_window.title("Insert Options")
    insert_window.geometry("300x200")

    tk.Button(insert_window, text="Insert Player/Coach", command=insert_person).pack(pady=10)
    tk.Button(insert_window, text="Insert Team", command=insert_team).pack(pady=10)


def delete():
    def delete_data():
        entry_id = entry_id_var.get()
        entity_type = entity_type_var.get()
        conn = get_db_connection()
        cursor = conn.cursor()

        if entity_type == "Player":
            cursor.execute("DELETE FROM Contracts WHERE player_id = %s", (entry_id,))
            cursor.execute("DELETE FROM Players WHERE player_id = %s", (entry_id,))
            cursor.execute("DELETE FROM Person WHERE person_id = %s", (entry_id,))
        elif entity_type == "Coach":
            cursor.execute("DELETE FROM Coaches WHERE coach_id = %s", (entry_id,))
            cursor.execute("DELETE FROM Person WHERE person_id = %s", (entry_id,))
        elif entity_type == "Team":
            cursor.execute("DELETE FROM Teams WHERE team_id = %s", (entry_id,))

        conn.commit()
        conn.close()
        messagebox.showinfo("Delete", f"{entity_type} deleted successfully.")

    delete_window = tk.Toplevel()
    delete_window.title("Delete Data")
    delete_window.geometry("300x200")

    tk.Label(delete_window, text="Entity ID:").pack()
    entry_id_var = tk.Entry(delete_window)
    entry_id_var.pack()

    entity_type_var = tk.StringVar(value="Player")
    tk.Label(delete_window, text="Entity Type:").pack()
    tk.Radiobutton(delete_window, text="Player", variable=entity_type_var, value="Player").pack()
    tk.Radiobutton(delete_window, text="Coach", variable=entity_type_var, value="Coach").pack()
    tk.Radiobutton(delete_window, text="Team", variable=entity_type_var, value="Team").pack()

    delete_btn = tk.Button(delete_window, text="Delete", command=delete_data)
    delete_btn.pack(pady=5)


def update():
    def update_contract():
        player_id = player_id_var.get()
        team_id = team_id_var.get()
        new_cap_hit = new_cap_hit_var.get()

        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("UPDATE Contracts SET cap_hit = %s WHERE player_id = %s AND team_id = %s",
                       (new_cap_hit, player_id, team_id))
        conn.commit()
        conn.close()
        messagebox.showinfo("Update", "Contract updated successfully.")

    update_window = tk.Toplevel()
    update_window.title("Update Contract")
    update_window.geometry("300x200")

    tk.Label(update_window, text="Player ID:").pack()
    player_id_var = tk.Entry(update_window)
    player_id_var.pack()

    tk.Label(update_window, text="Team ID:").pack()
    team_id_var = tk.Entry(update_window)
    team_id_var.pack()

    tk.Label(update_window, text="New Cap Hit:").pack()
    new_cap_hit_var = tk.Entry(update_window)
    new_cap_hit_var.pack()

    update_btn = tk.Button(update_window, text="Update", command=update_contract)
    update_btn.pack(pady=5)


def main():
    app = tk.Tk()
    app.title("NHL Database Interface")
    app.geometry("400x400")
    app.configure(bg='#f0f0f0')

    tk.Label(app, text="NHL Salary Cap Tracker", font=("Arial", 16)).pack(pady=10)

    query_btn = tk.Button(app, text="Query", command=query_options)
    query_btn.pack(pady=10)

    insert_btn = tk.Button(app, text="Insert", command=insert)
    insert_btn.pack(pady=10)

    delete_btn = tk.Button(app, text="Delete", command=delete)
    delete_btn.pack(pady=10)

    update_btn = tk.Button(app, text="Update", command=update)
    update_btn.pack(pady=10)

    quit_btn = tk.Button(app, text="Quit", command=app.quit)
    quit_btn.pack(pady=10)

    app.mainloop()


if __name__ == "__main__":
    main()
