package com.maxciv.library.model;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {

    LIBRARIAN(0, "Librarian"),
    READER(1, "Reader"),
    SUPPLIER(2, "Supplier"),
    COMMON_USER(3, "CommonUser");

    private final int role;
    private final String roleName;

    Role(int role, String roleName) {
        this.role = role;
        this.roleName = roleName;
    }

    public int getRoleId() {
        return role;
    }

    public String getRoleName() {
        return roleName;
    }

    @Override
    public String toString() {
        return roleName;
    }

    /**
     * Get the role which corresponds to the given number as returned by
     * {@link Role#getRoleId()}. If the number is an invalid value,
     * then {@link Role#READER} will be returned.
     *
     * @param role The numeric role value.
     * @return The role.
     */
    public static Role valueOf(int role) {
        try {
            return Role.values()[role];
        } catch (ArrayIndexOutOfBoundsException e) {
            return READER;
        }
    }

    public static Role valueOfString(String role) {
        switch (role) {
            case "Librarian":
                return LIBRARIAN;
            case "Reader":
                return READER;
            case "Supplier":
                return SUPPLIER;
            case "CommonUser":
                return COMMON_USER;
        }
        return READER;
    }

    @Override
    public String getAuthority() {
        return name();
    }
}
